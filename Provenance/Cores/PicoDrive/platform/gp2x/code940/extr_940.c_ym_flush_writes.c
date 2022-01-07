
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int writebuffsel; int* writebuff1; int* writebuff0; } ;


 int YM2612Write_ (int,int) ;
 TYPE_1__* shared_ctl ;

__attribute__((used)) static void ym_flush_writes(void)
{
 UINT16 *wbuff;
 int i;

 if (shared_ctl->writebuffsel == 1) {
  wbuff = shared_ctl->writebuff1;
 } else {
  wbuff = shared_ctl->writebuff0;
 }


 for (i = 2048; i > 0; i--) {
  UINT16 d = *wbuff++;
  if (d == 0xffff) break;
  if (d == 0xfffe) continue;
  YM2612Write_(d >> 8, d);
 }
}
