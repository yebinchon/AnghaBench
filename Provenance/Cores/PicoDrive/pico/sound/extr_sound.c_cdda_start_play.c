
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cdda_type; int cdda_stream; } ;


 scalar_t__ CT_MP3 ;
 scalar_t__ CT_WAV ;
 TYPE_1__* Pico_mcd ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int mp3_start_play (int ,int) ;
 int pm_seek (int ,int,int ) ;

void cdda_start_play(int lba_base, int lba_offset, int lb_len)
{
  if (Pico_mcd->cdda_type == CT_MP3)
  {
    int pos1024 = 0;

    if (lba_offset)
      pos1024 = lba_offset * 1024 / lb_len;

    mp3_start_play(Pico_mcd->cdda_stream, pos1024);
    return;
  }

  pm_seek(Pico_mcd->cdda_stream, (lba_base + lba_offset) * 2352, SEEK_SET);
  if (Pico_mcd->cdda_type == CT_WAV)
  {

    pm_seek(Pico_mcd->cdda_stream, 44, SEEK_CUR);
  }
}
