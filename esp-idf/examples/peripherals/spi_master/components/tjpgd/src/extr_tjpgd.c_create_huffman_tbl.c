
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int*** huffbits; int*** huffcode; int*** huffdata; } ;
typedef TYPE_1__ JDEC ;


 int JDR_FMT1 ;
 int JDR_MEM1 ;
 int JDR_OK ;
 int* alloc_pool (TYPE_1__*,int) ;

__attribute__((used)) static int create_huffman_tbl (
 JDEC* jd,
 const uint8_t* data,
 uint16_t ndata
)
{
 uint16_t i, j, b, np, cls, num;
 uint8_t d, *pb, *pd;
 uint16_t hc, *ph;


 while (ndata) {
  if (ndata < 17) return JDR_FMT1;
  ndata -= 17;
  d = *data++;
  if (d & 0xEE) return JDR_FMT1;
  cls = d >> 4; num = d & 0x0F;
  pb = alloc_pool(jd, 16);
  if (!pb) return JDR_MEM1;
  jd->huffbits[num][cls] = pb;
  for (np = i = 0; i < 16; i++) {
   np += (pb[i] = *data++);
  }
  ph = alloc_pool(jd, (uint16_t)(np * sizeof (uint16_t)));
  if (!ph) return JDR_MEM1;
  jd->huffcode[num][cls] = ph;
  hc = 0;
  for (j = i = 0; i < 16; i++) {
   b = pb[i];
   while (b--) ph[j++] = hc++;
   hc <<= 1;
  }

  if (ndata < np) return JDR_FMT1;
  ndata -= np;
  pd = alloc_pool(jd, np);
  if (!pd) return JDR_MEM1;
  jd->huffdata[num][cls] = pd;
  for (i = 0; i < np; i++) {
   d = *data++;
   if (!cls && d > 11) return JDR_FMT1;
   *pd++ = d;
  }
 }

 return JDR_OK;
}
