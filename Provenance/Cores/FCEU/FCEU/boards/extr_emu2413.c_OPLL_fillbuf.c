
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int OPLL ;


 int calc (int *) ;

void OPLL_fillbuf(OPLL* opll, int32 *buf, int32 len, int shift) {
 while (len > 0) {
  *buf += (calc(opll) + 32768) << shift;
  buf++;
  len--;
 }
}
