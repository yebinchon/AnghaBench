
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int intfstream_t ;
struct TYPE_4__ {int track; } ;
struct TYPE_5__ {TYPE_1__ chd; int type; } ;
typedef TYPE_2__ intfstream_info_t ;
typedef int int32_t ;


 int INTFSTREAM_CHD ;
 int free (int *) ;
 int intfstream_close (int *) ;
 scalar_t__ intfstream_init (TYPE_2__*) ;
 int intfstream_open (int *,char const*,unsigned int,unsigned int) ;

intfstream_t *intfstream_open_chd_track(const char *path,
      unsigned mode, unsigned hints, int32_t track)
{
   intfstream_info_t info;
   intfstream_t *fd = ((void*)0);

   info.type = INTFSTREAM_CHD;
   info.chd.track = track;

   fd = (intfstream_t*)intfstream_init(&info);

   if (!fd)
      return ((void*)0);

   if (!intfstream_open(fd, path, mode, hints))
      goto error;

   return fd;

error:
   if (fd)
   {
      intfstream_close(fd);
      free(fd);
   }
   return ((void*)0);
}
