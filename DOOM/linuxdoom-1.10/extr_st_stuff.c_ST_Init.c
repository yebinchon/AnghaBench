
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int PU_STATIC ;
 int ST_HEIGHT ;
 int ST_WIDTH ;
 int ST_loadData () ;
 scalar_t__ Z_Malloc (int,int ,int ) ;
 int ** screens ;
 scalar_t__ veryfirsttime ;

void ST_Init (void)
{
    veryfirsttime = 0;
    ST_loadData();
    screens[4] = (byte *) Z_Malloc(ST_WIDTH*ST_HEIGHT, PU_STATIC, 0);
}
