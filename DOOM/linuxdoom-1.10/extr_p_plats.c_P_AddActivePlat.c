
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int plat_t ;


 int I_Error (char*) ;
 int MAXPLATS ;
 int ** activeplats ;

void P_AddActivePlat(plat_t* plat)
{
    int i;

    for (i = 0;i < MAXPLATS;i++)
 if (activeplats[i] == ((void*)0))
 {
     activeplats[i] = plat;
     return;
 }
    I_Error ("P_AddActivePlat: no more plats!");
}
