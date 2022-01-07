
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cc_unit ;
typedef int cc_size ;


 int CC_MEMMOVE (int *,int const*,int ) ;
 int ccn_sizeof_n (int ) ;

void ccn_set(cc_size n, cc_unit *r, const cc_unit *s)
{
    CC_MEMMOVE(r, s, ccn_sizeof_n(n));
}
