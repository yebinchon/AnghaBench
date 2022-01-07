
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;
typedef int USHORT ;


 int Rand (int *,int) ;

USHORT Rand16()
{
 USHORT i;
 Rand(&i, sizeof(i));
 return i;
}
