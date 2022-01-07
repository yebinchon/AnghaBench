
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_DeferedInitNew (int,scalar_t__,int) ;
 int M_ClearMenus () ;
 int M_StartMessage (int ,int ,int) ;
 int M_VerifyNightmare ;
 int NIGHTMARE ;
 scalar_t__ epi ;
 int nightmare ;

void M_ChooseSkill(int choice)
{
    if (choice == nightmare)
    {
 M_StartMessage(NIGHTMARE,M_VerifyNightmare,1);
 return;
    }

    G_DeferedInitNew(choice,epi+1,1);
    M_ClearMenus ();
}
