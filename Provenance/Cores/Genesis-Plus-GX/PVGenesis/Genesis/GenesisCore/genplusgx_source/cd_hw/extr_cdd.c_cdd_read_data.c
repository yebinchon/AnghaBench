
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {TYPE_2__* tracks; } ;
struct TYPE_6__ {int lba; int sectorSize; TYPE_1__ toc; } ;
struct TYPE_5__ {int end; int fd; } ;


 int SEEK_SET ;
 TYPE_3__ cdd ;
 int fread (int *,int,int,int ) ;
 int fseek (int ,int,int ) ;

void cdd_read_data(uint8 *dst)
{

  if ((cdd.lba >= 0) && (cdd.lba < cdd.toc.tracks[0].end))
  {

    if (cdd.sectorSize == 2352)
    {

      fseek(cdd.toc.tracks[0].fd, cdd.lba * 2352 + 16, SEEK_SET);
    }


    fread(dst, 2048, 1, cdd.toc.tracks[0].fd);
  }
}
