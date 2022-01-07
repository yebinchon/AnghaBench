
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {char* message; } ;


 int I_Error (char*) ;
 int I_ReadScreen (int *) ;
 int PU_CACHE ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int W_CacheLumpName (char*,int ) ;
 int WritePCXfile (char*,int *,int ,int ,int ) ;
 int access (char*,int ) ;
 size_t consoleplayer ;
 TYPE_1__* players ;
 int ** screens ;
 int strcpy (char*,char*) ;

void M_ScreenShot (void)
{
    int i;
    byte* linear;
    char lbmname[12];


    linear = screens[2];
    I_ReadScreen (linear);


    strcpy(lbmname,"DOOM00.pcx");

    for (i=0 ; i<=99 ; i++)
    {
 lbmname[4] = i/10 + '0';
 lbmname[5] = i%10 + '0';
 if (access(lbmname,0) == -1)
     break;
    }
    if (i==100)
 I_Error ("M_ScreenShot: Couldn't create a PCX");


    WritePCXfile (lbmname, linear,
    SCREENWIDTH, SCREENHEIGHT,
    W_CacheLumpName ("PLAYPAL",PU_CACHE));

    players[consoleplayer].message = "screen shot";
}
