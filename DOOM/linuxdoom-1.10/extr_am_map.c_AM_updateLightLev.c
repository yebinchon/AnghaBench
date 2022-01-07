
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int litelevels ;


 int amclock ;
 int lightlev ;
 int nexttic ;

void AM_updateLightLev(void)
{
    static nexttic = 0;

    static int litelevels[] = { 0, 4, 7, 10, 12, 14, 15, 15 };
    static int litelevelscnt = 0;


    if (amclock>nexttic)
    {
 lightlev = litelevels[litelevelscnt++];
 if (litelevelscnt == sizeof(litelevels)/sizeof(int)) litelevelscnt = 0;
 nexttic = amclock + 6 - (amclock % 6);
    }

}
