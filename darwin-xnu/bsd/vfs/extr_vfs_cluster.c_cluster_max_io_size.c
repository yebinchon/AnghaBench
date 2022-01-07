
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_segreadcnt; int mnt_maxreadcnt; int mnt_segwritecnt; int mnt_maxwritecnt; } ;




 int MAX_UPL_SIZE_BYTES ;
 int MAX_UPL_TRANSFER_BYTES ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int min (int,int) ;

uint32_t
cluster_max_io_size(mount_t mp, int type)
{
 uint32_t max_io_size;
 uint32_t segcnt;
 uint32_t maxcnt;

 switch(type) {

 case 129:
  segcnt = mp->mnt_segreadcnt;
  maxcnt = mp->mnt_maxreadcnt;
  break;
 case 128:
  segcnt = mp->mnt_segwritecnt;
  maxcnt = mp->mnt_maxwritecnt;
  break;
 default:
  segcnt = min(mp->mnt_segreadcnt, mp->mnt_segwritecnt);
  maxcnt = min(mp->mnt_maxreadcnt, mp->mnt_maxwritecnt);
  break;
 }
 if (segcnt > (MAX_UPL_SIZE_BYTES >> PAGE_SHIFT)) {



               segcnt = MAX_UPL_SIZE_BYTES >> PAGE_SHIFT;
       }
       max_io_size = min((segcnt * PAGE_SIZE), maxcnt);

       if (max_io_size < MAX_UPL_TRANSFER_BYTES) {



        max_io_size = MAX_UPL_TRANSFER_BYTES;
       } else {



        max_io_size &= ~PAGE_MASK;
       }
       return (max_io_size);
}
