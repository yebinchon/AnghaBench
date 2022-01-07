
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;


 size_t M_LEADINGSPACE (int const) ;

size_t
mbuf_leadingspace(const mbuf_t mbuf)
{
 return (M_LEADINGSPACE(mbuf));
}
