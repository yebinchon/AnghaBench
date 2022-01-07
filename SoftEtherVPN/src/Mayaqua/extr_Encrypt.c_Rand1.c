
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Rand32 () ;

bool Rand1()
{
 return (Rand32() % 2) == 0 ? 0 : 1;
}
