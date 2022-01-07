
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P_InitPicAnims () ;
 int P_InitSwitchList () ;
 int R_InitSprites (int ) ;
 int sprnames ;

void P_Init (void)
{
    P_InitSwitchList ();
    P_InitPicAnims ();
    R_InitSprites (sprnames);
}
