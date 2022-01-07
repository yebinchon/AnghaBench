
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__** qttbl; } ;
typedef TYPE_1__ JDEC ;


 int IPSF (int) ;
 int JDR_FMT1 ;
 int JDR_MEM1 ;
 int JDR_OK ;
 int ZIG (int) ;
 scalar_t__* alloc_pool (TYPE_1__*,int) ;

__attribute__((used)) static int create_qt_tbl (
 JDEC* jd,
 const uint8_t* data,
 uint16_t ndata
)
{
 uint16_t i;
 uint8_t d, z;
 int32_t *pb;


 while (ndata) {
  if (ndata < 65) return JDR_FMT1;
  ndata -= 65;
  d = *data++;
  if (d & 0xF0) return JDR_FMT1;
  i = d & 3;
  pb = alloc_pool(jd, 64 * sizeof (int32_t));
  if (!pb) return JDR_MEM1;
  jd->qttbl[i] = pb;
  for (i = 0; i < 64; i++) {
   z = ZIG(i);
   pb[z] = (int32_t)((uint32_t)*data++ * IPSF(z));
  }
 }

 return JDR_OK;
}
