
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_6__ {TYPE_1__* tracks; } ;
struct TYPE_8__ {size_t cycles; size_t latency; size_t index; size_t lba; size_t scanOffset; size_t volume; size_t status; int sectorSize; TYPE_2__ toc; } ;
struct TYPE_7__ {scalar_t__ datasource; } ;
struct TYPE_5__ {int start; int offset; scalar_t__ fd; TYPE_3__ vf; } ;


 int SEEK_SET ;
 TYPE_4__ cdd ;
 int fseek (scalar_t__,int,int ) ;
 int load_param (size_t*,int) ;
 int ov_pcm_seek (TYPE_3__*,int) ;

int cdd_context_load(uint8 *state)
{
  int lba;
  int bufferptr = 0;

  load_param(&cdd.cycles, sizeof(cdd.cycles));
  load_param(&cdd.latency, sizeof(cdd.latency));
  load_param(&cdd.index, sizeof(cdd.index));
  load_param(&cdd.lba, sizeof(cdd.lba));
  load_param(&cdd.scanOffset, sizeof(cdd.scanOffset));
  load_param(&cdd.volume, sizeof(cdd.volume));
  load_param(&cdd.status, sizeof(cdd.status));


  lba = cdd.lba;
  if (lba < cdd.toc.tracks[cdd.index].start)
  {
    lba = cdd.toc.tracks[cdd.index].start;
  }


  if (!cdd.index)
  {

    if (cdd.toc.tracks[0].fd)
    {
      fseek(cdd.toc.tracks[0].fd, lba * cdd.sectorSize, SEEK_SET);
    }
  }






  else if (cdd.toc.tracks[cdd.index].fd)
  {

    fseek(cdd.toc.tracks[cdd.index].fd, (lba * 2352) - cdd.toc.tracks[cdd.index].offset, SEEK_SET);
  }

  return bufferptr;
}
