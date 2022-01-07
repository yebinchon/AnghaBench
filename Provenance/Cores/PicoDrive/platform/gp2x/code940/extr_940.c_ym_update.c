
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int writebuffsel; int* writebuff1; int* writebuff0; int length; scalar_t__ stereo; void* ym_active_chs; } ;


 void* YM2612UpdateOne_ (int*,int,scalar_t__,int) ;
 int YM2612Write_ (int,int) ;
 TYPE_1__* shared_ctl ;

__attribute__((used)) static void ym_update(int *ym_buffer)
{
 int i, dw;
 int two_upds = 0;
 UINT16 *wbuff;

 if (shared_ctl->writebuffsel == 1) {
  wbuff = shared_ctl->writebuff1;
 } else {
  wbuff = shared_ctl->writebuff0;
 }


 for (i = 2048/2; i > 0; i--) {
  UINT16 d;
  dw = *(int *)wbuff;
  d = dw;
  wbuff++;
  if (d == 0xffff) break;
  if (d == 0xfffe) { two_upds=1; break; }
  YM2612Write_(d >> 8, d);
  d = (dw>>16);
  wbuff++;
  if (d == 0xffff) break;
  if (d == 0xfffe) { two_upds=1; break; }
  YM2612Write_(d >> 8, d);
 }

 if (two_upds)
 {
  int len1 = shared_ctl->length / 2;
  shared_ctl->ym_active_chs =
   YM2612UpdateOne_(ym_buffer, len1, shared_ctl->stereo, 1);

  for (i *= 2; i > 0; i--) {
   UINT16 d = *wbuff++;
   if (d == 0xffff) break;
   YM2612Write_(d >> 8, d);
  }

  ym_buffer += shared_ctl->stereo ? len1*2 : len1;
  len1 = shared_ctl->length - len1;

  shared_ctl->ym_active_chs =
   YM2612UpdateOne_(ym_buffer, len1, shared_ctl->stereo, 1);
 } else {
  shared_ctl->ym_active_chs =
   YM2612UpdateOne_(ym_buffer, shared_ctl->length, shared_ctl->stereo, 1);
 }
}
