
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
struct secasvar {int dummy; } ;
typedef int caddr_t ;


 struct secasvar* key_allocsa_extended (int ,int ,int ,int ,int ,int *) ;

struct secasvar *
key_allocsa(
   u_int family,
   caddr_t src,
   caddr_t dst,
   u_int proto,
   u_int32_t spi)
{
 return key_allocsa_extended(family, src, dst, proto, spi, ((void*)0));
}
