
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_5__ {int msx; int msy; int*** huffcode; int* dcv; int** qttbl; size_t* qtid; int scale; scalar_t__*** huffdata; scalar_t__*** huffbits; scalar_t__* mcubuf; scalar_t__ workbuf; } ;
typedef scalar_t__ JRESULT ;
typedef TYPE_1__ JDEC ;


 scalar_t__ JDR_FMT1 ;
 scalar_t__ JDR_OK ;
 scalar_t__ JD_USE_SCALE ;
 int ZIG (int) ;
 int bitext (TYPE_1__*,int) ;
 int block_idct (int*,scalar_t__*) ;
 int huffext (TYPE_1__*,scalar_t__ const*,int const*,scalar_t__ const*) ;

__attribute__((used)) static JRESULT mcu_load (
 JDEC* jd
)
{
 int32_t *tmp = (int32_t*)jd->workbuf;
 int b, d, e;
 uint16_t blk, nby, nbc, i, z, id, cmp;
 uint8_t *bp;
 const uint8_t *hb, *hd;
 const uint16_t *hc;
 const int32_t *dqf;


 nby = jd->msx * jd->msy;
 nbc = 2;
 bp = jd->mcubuf;

 for (blk = 0; blk < nby + nbc; blk++) {
  cmp = (blk < nby) ? 0 : blk - nby + 1;
  id = cmp ? 1 : 0;


  hb = jd->huffbits[id][0];
  hc = jd->huffcode[id][0];
  hd = jd->huffdata[id][0];
  b = huffext(jd, hb, hc, hd);
  if (b < 0) return 0 - b;
  d = jd->dcv[cmp];
  if (b) {
   e = bitext(jd, b);
   if (e < 0) return 0 - e;
   b = 1 << (b - 1);
   if (!(e & b)) e -= (b << 1) - 1;
   d += e;
   jd->dcv[cmp] = (int16_t)d;
  }
  dqf = jd->qttbl[jd->qtid[cmp]];
  tmp[0] = d * dqf[0] >> 8;


  for (i = 1; i < 64; tmp[i++] = 0) ;
  hb = jd->huffbits[id][1];
  hc = jd->huffcode[id][1];
  hd = jd->huffdata[id][1];
  i = 1;
  do {
   b = huffext(jd, hb, hc, hd);
   if (b == 0) break;
   if (b < 0) return 0 - b;
   z = (uint16_t)b >> 4;
   if (z) {
    i += z;
    if (i >= 64) return JDR_FMT1;
   }
   if (b &= 0x0F) {
    d = bitext(jd, b);
    if (d < 0) return 0 - d;
    b = 1 << (b - 1);
    if (!(d & b)) d -= (b << 1) - 1;
    z = ZIG(i);
    tmp[z] = d * dqf[z] >> 8;
   }
  } while (++i < 64);

  if (JD_USE_SCALE && jd->scale == 3) {
   *bp = (uint8_t)((*tmp / 256) + 128);
  } else {
   block_idct(tmp, bp);
  }

  bp += 64;
 }

 return JDR_OK;
}
