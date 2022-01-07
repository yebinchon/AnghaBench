
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int* dptr; int dctr; int* inbuf; int (* infunc ) (TYPE_1__*,int*,int ) ;scalar_t__* dcv; scalar_t__ dmsk; } ;
typedef int JRESULT ;
typedef TYPE_1__ JDEC ;


 int JDR_FMT1 ;
 int JDR_INP ;
 int JDR_OK ;
 int JD_SZBUF ;
 int stub1 (TYPE_1__*,int*,int ) ;

__attribute__((used)) static JRESULT restart (
 JDEC* jd,
 uint16_t rstn
)
{
 uint16_t i, dc;
 uint16_t d;
 uint8_t *dp;



 dp = jd->dptr; dc = jd->dctr;
 d = 0;
 for (i = 0; i < 2; i++) {
  if (!dc) {
   dp = jd->inbuf;
   dc = jd->infunc(jd, dp, JD_SZBUF);
   if (!dc) return JDR_INP;
  } else {
   dp++;
  }
  dc--;
  d = (d << 8) | *dp;
 }
 jd->dptr = dp; jd->dctr = dc; jd->dmsk = 0;


 if ((d & 0xFFD8) != 0xFFD0 || (d & 7) != (rstn & 7)) {
  return JDR_FMT1;
 }


 jd->dcv[2] = jd->dcv[1] = jd->dcv[0] = 0;

 return JDR_OK;
}
