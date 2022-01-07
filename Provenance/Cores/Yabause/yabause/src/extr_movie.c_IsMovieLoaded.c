
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PlaybackFileOpened ;
 scalar_t__ RecordingFileOpened ;

int IsMovieLoaded(void)
{
 if (RecordingFileOpened || PlaybackFileOpened)
  return 1;
 else
  return 0;
}
