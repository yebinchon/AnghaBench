
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _SHIFTR (int,int,int) ;
 int crand_next ;

__attribute__((used)) static __inline__ u32 __card_rand()
{
 crand_next = (crand_next*0x41C64E6D)+12345;
 return _SHIFTR(crand_next,16,15);
}
