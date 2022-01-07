
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int episode; int name2; int name1; } ;


 int I_Error (char*,int ) ;
 int MAXSWITCHES ;
 scalar_t__ R_CheckTextureNumForName (int ) ;
 void* R_TextureNumForName (int ) ;
 TYPE_1__* alphSwitchList ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;
 int numswitches ;
 scalar_t__ registered ;
 int* switchlist ;

void P_InitSwitchList(void)
{
    int i;
    int index;
    int episode;

    episode = 1;

    if (gamemode == registered)
 episode = 2;
    else
 if ( gamemode == commercial )
     episode = 3;

    for (index = 0,i = 0;i < MAXSWITCHES;i++)
    {
 if (!alphSwitchList[i].episode)
 {
     numswitches = index/2;
     switchlist[index] = -1;
     break;
 }

 if (alphSwitchList[i].episode <= episode)
 {
     switchlist[index++] = R_TextureNumForName(alphSwitchList[i].name1);
     switchlist[index++] = R_TextureNumForName(alphSwitchList[i].name2);
 }
    }
}
