
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ceiling_t ;


 int MAXCEILINGS ;
 int ** activeceilings ;

void P_AddActiveCeiling(ceiling_t* c)
{
    int i;

    for (i = 0; i < MAXCEILINGS;i++)
    {
 if (activeceilings[i] == ((void*)0))
 {
     activeceilings[i] = c;
     return;
 }
    }
}
