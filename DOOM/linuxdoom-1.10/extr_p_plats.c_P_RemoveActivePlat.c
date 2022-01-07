
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int thinker; TYPE_1__* sector; } ;
typedef TYPE_2__ plat_t ;
struct TYPE_5__ {int * specialdata; } ;


 int I_Error (char*) ;
 int MAXPLATS ;
 int P_RemoveThinker (int *) ;
 TYPE_2__** activeplats ;

void P_RemoveActivePlat(plat_t* plat)
{
    int i;
    for (i = 0;i < MAXPLATS;i++)
 if (plat == activeplats[i])
 {
     (activeplats[i])->sector->specialdata = ((void*)0);
     P_RemoveThinker(&(activeplats[i])->thinker);
     activeplats[i] = ((void*)0);

     return;
 }
    I_Error ("P_RemoveActivePlat: can't find plat!");
}
