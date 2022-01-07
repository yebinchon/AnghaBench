
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int MAC2SFM_LEN ;
 int assert (int) ;
 int* mac2sfm ;

__attribute__((used)) static u_int16_t
ucs_to_sfm(u_int16_t ucs_ch, int lastchar)
{

 if (lastchar) {
  if (ucs_ch == 0x20)
   return (0xf028);
  else if (ucs_ch == 0x2e)
   return (0xf029);
 }

 if (ucs_ch <= 0x1f) {
  return (ucs_ch | 0xf000);
 } else {
  u_int16_t lsb;

  assert((ucs_ch - 0x0020) < MAC2SFM_LEN);
  lsb = mac2sfm[ucs_ch - 0x0020];
  if (lsb != ucs_ch)
   return(0xf000 | lsb);
 }
 return (ucs_ch);
}
