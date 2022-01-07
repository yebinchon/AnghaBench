
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctl_addr; int fad_start; int file_size; int sector_size; int fad_end; scalar_t__ file_id; int * fp; scalar_t__ file_offset; } ;
typedef TYPE_1__ track_info_struct ;
typedef int session_info_struct ;
struct TYPE_7__ {int session_num; TYPE_3__* session; } ;
struct TYPE_6__ {int fad_start; int track_num; int fad_end; TYPE_1__* track; } ;
typedef int FILE ;


 int SEEK_END ;
 int YAB_ERR_MEMORYALLOC ;
 int YAB_ERR_OTHER ;
 int YabSetError (int ,char*) ;
 TYPE_4__ disc ;
 int free (TYPE_3__*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 void* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int LoadISO(FILE *iso_file)
{
   track_info_struct *track;

   disc.session_num = 1;
   disc.session = malloc(sizeof(session_info_struct) * disc.session_num);
   if (disc.session == ((void*)0))
   {
      YabSetError(YAB_ERR_MEMORYALLOC, ((void*)0));
      return -1;
   }

   disc.session[0].fad_start = 150;
   disc.session[0].track_num = 1;
   disc.session[0].track = malloc(sizeof(track_info_struct) * disc.session[0].track_num);
   if (disc.session[0].track == ((void*)0))
   {
      YabSetError(YAB_ERR_MEMORYALLOC, ((void*)0));
      free(disc.session);
      disc.session = ((void*)0);
      return -1;
   }

 memset(disc.session[0].track, 0, sizeof(track_info_struct) * disc.session[0].track_num);

   track = disc.session[0].track;
   track->ctl_addr = 0x41;
   track->fad_start = 150;
   track->file_offset = 0;
   track->fp = iso_file;
   fseek(iso_file, 0, SEEK_END);
   track->file_size = ftell(iso_file);
   track->file_id = 0;

   if (0 == (track->file_size % 2048))
      track->sector_size = 2048;
   else if (0 == (track->file_size % 2352))
      track->sector_size = 2352;
   else
   {
      YabSetError(YAB_ERR_OTHER, "Unsupported CD image!\n");
      return -1;
   }

   disc.session[0].fad_end = track->fad_end = disc.session[0].fad_start + (track->file_size / track->sector_size);

   return 0;
}
