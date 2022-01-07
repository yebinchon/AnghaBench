
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;


 scalar_t__ MHLEN ;
 scalar_t__ MLEN ;

u_int32_t
mbuf_get_minclsize(void)
{
 return (MHLEN + MLEN);
}
