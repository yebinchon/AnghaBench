
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* frags; } ;


 int MAXPLAYERS ;
 scalar_t__* playeringame ;
 TYPE_1__* plrs ;

int WI_fragSum(int playernum)
{
    int i;
    int frags = 0;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (playeringame[i]
     && i!=playernum)
 {
     frags += plrs[playernum].frags[i];
 }
    }



    frags -= plrs[playernum].frags[playernum];



    return frags;
}
