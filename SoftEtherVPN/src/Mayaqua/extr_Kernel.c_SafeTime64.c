
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int MAKESURE (int ,int ,unsigned long long) ;

UINT64 SafeTime64(UINT64 sec64)
{
 return MAKESURE(sec64, 0, 4102243323123ULL);
}
