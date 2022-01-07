
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ offset; int * fd; } ;
typedef TYPE_2__ track_t ;
struct TYPE_4__ {TYPE_2__* tracks; } ;
struct TYPE_6__ {TYPE_1__ toc; } ;
typedef int FILE ;


 int EL_STATUS ;
 int SEEK_END ;
 int SEEK_SET ;
 TYPE_3__ cdd ;
 int elprintf (int ,char*,int,int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int mp3_get_bitrate (int *,int) ;
 scalar_t__ strdup (char const*) ;

__attribute__((used)) static int handle_mp3(const char *fname, int index)
{
  track_t *track = &cdd.toc.tracks[index];
  FILE *tmp_file;
  int kBps;
  int fs, ret;

  tmp_file = fopen(fname, "rb");
  if (tmp_file == ((void*)0))
    return -1;

  ret = fseek(tmp_file, 0, SEEK_END);
  fs = ftell(tmp_file);
  fseek(tmp_file, 0, SEEK_SET);
  kBps = mp3_get_bitrate(tmp_file, fs) / 8;
  if (ret != 0 || kBps <= 0)
  {
    elprintf(EL_STATUS, "track %2i: mp3 bitrate %i", index+1, kBps);



    fclose(tmp_file);

    return -1;
  }

  track->fd = tmp_file;
  track->offset = 0;

  fs *= 75;
  fs /= kBps * 1000;
  return fs;
}
