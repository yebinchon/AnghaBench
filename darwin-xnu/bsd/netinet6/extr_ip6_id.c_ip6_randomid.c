
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int randomid (int *) ;
 int randomtab_32 ;

u_int32_t
ip6_randomid(void)
{

 return (randomid(&randomtab_32));
}
