
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENDGAME ;
 int * M_EndGameResponse ;
 int M_StartMessage (int ,int *,int) ;
 int NETEND ;
 int S_StartSound (int *,int ) ;
 scalar_t__ netgame ;
 int sfx_oof ;
 int usergame ;

void M_EndGame(int choice)
{
    choice = 0;
    if (!usergame)
    {
 S_StartSound(((void*)0),sfx_oof);
 return;
    }

    if (netgame)
    {
 M_StartMessage(NETEND,((void*)0),0);
 return;
    }

    M_StartMessage(ENDGAME,M_EndGameResponse,1);
}
