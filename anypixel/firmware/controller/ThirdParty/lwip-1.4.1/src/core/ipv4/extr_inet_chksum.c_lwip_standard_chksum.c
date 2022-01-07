
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;
typedef int mem_ptr_t ;


 int FOLD_U32T (int ) ;
 int SWAP_BYTES_IN_WORD (int ) ;

__attribute__((used)) static u16_t
lwip_standard_chksum(void *dataptr, int len)
{
  u8_t *pb = (u8_t *)dataptr;
  u16_t *ps, t = 0;
  u32_t sum = 0;
  int odd = ((mem_ptr_t)pb & 1);


  if (odd && len > 0) {
    ((u8_t *)&t)[1] = *pb++;
    len--;
  }


  ps = (u16_t *)(void *)pb;
  while (len > 1) {
    sum += *ps++;
    len -= 2;
  }


  if (len > 0) {
    ((u8_t *)&t)[0] = *(u8_t *)ps;
  }


  sum += t;



  sum = FOLD_U32T(sum);
  sum = FOLD_U32T(sum);


  if (odd) {
    sum = SWAP_BYTES_IN_WORD(sum);
  }

  return (u16_t)sum;
}
