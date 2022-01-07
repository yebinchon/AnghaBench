
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;
typedef int UINT64 ;


 int Rand (int *,int) ;

UINT64 Rand64()
{
 UINT64 i;
 Rand(&i, sizeof(i));
 return i;
}
