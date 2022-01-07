
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buf {int dummy; } ;
struct TYPE_2__ {scalar_t__ mz_size; int mz_max; char* mz_name; void* mz_zone; } ;


 int FALSE ;
 int PAGE_SIZE ;
 int Z_CALLERACCT ;
 void* buf_hdr_zone ;
 TYPE_1__* meta_zones ;
 void* zinit (int,int,int ,char*) ;
 int zone_change (void*,int ,int ) ;

__attribute__((used)) static void
bufzoneinit(void)
{
 int i;

 for (i = 0; meta_zones[i].mz_size != 0; i++) {
  meta_zones[i].mz_zone =
    zinit(meta_zones[i].mz_size,
     meta_zones[i].mz_max,
     PAGE_SIZE,
     meta_zones[i].mz_name);
  zone_change(meta_zones[i].mz_zone, Z_CALLERACCT, FALSE);
 }
 buf_hdr_zone = zinit(sizeof(struct buf), 32, PAGE_SIZE, "buf headers");
 zone_change(buf_hdr_zone, Z_CALLERACCT, FALSE);
}
