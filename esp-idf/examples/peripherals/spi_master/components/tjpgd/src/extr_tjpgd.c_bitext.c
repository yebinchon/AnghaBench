
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_4__ {int dmsk; int dctr; int* dptr; int* inbuf; int (* infunc ) (TYPE_1__*,int*,int ) ;} ;
typedef TYPE_1__ JDEC ;


 scalar_t__ JDR_FMT1 ;
 scalar_t__ JDR_INP ;
 int JD_SZBUF ;
 int stub1 (TYPE_1__*,int*,int ) ;

__attribute__((used)) static int bitext (
 JDEC* jd,
 int nbit
)
{
 uint8_t msk, s, *dp;
 uint16_t dc, v, f;


 msk = jd->dmsk; dc = jd->dctr; dp = jd->dptr;
 s = *dp; v = f = 0;
 do {
  if (!msk) {
   if (!dc) {
    dp = jd->inbuf;
    dc = jd->infunc(jd, dp, JD_SZBUF);
    if (!dc) return 0 - (int16_t)JDR_INP;
   } else {
    dp++;
   }
   dc--;
   if (f) {
    f = 0;
    if (*dp != 0) return 0 - (int16_t)JDR_FMT1;
    *dp = s = 0xFF;
   } else {
    s = *dp;
    if (s == 0xFF) {
     f = 1; continue;
    }
   }
   msk = 0x80;
  }
  v <<= 1;
  if (s & msk) v++;
  msk >>= 1;
  nbit--;
 } while (nbit);
 jd->dmsk = msk; jd->dctr = dc; jd->dptr = dp;

 return (int)v;
}
