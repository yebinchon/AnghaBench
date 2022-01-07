
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_hint_t ;


 int ccv_nnc_no_hint ;
 scalar_t__ memcmp (int const*,int *,int) ;

int ccv_nnc_is_no_hint(const ccv_nnc_hint_t hint)
{
 return (memcmp(&hint, &ccv_nnc_no_hint, sizeof(ccv_nnc_hint_t)) == 0);
}
