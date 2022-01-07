
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_DeferedInitNew (int ,scalar_t__,int) ;
 int M_ClearMenus () ;
 scalar_t__ epi ;
 int nightmare ;

void M_VerifyNightmare(int ch)
{
    if (ch != 'y')
 return;

    G_DeferedInitNew(nightmare,epi+1,1);
    M_ClearMenus ();
}
