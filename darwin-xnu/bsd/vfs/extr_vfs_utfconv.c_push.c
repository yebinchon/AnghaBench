
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int prioritysort (int *,int) ;
 scalar_t__ unicode_combinable (int ) ;

__attribute__((used)) static void push(uint16_t ucs_ch, int *combcharcnt, uint16_t **ucsp)
{



 if (unicode_combinable(ucs_ch)) {
  ++*combcharcnt;
 } else if (*combcharcnt) {
  if (*combcharcnt > 1) {
   prioritysort(*ucsp - *combcharcnt, *combcharcnt);
  }
  *combcharcnt = 0;
 }

 *(*ucsp)++ = ucs_ch;
}
