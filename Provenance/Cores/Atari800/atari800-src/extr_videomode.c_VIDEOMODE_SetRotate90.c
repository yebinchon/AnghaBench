
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetIntAndUpdateVideo (int *,int) ;
 int VIDEOMODE_rotate90 ;

int VIDEOMODE_SetRotate90(int value)
{
 return SetIntAndUpdateVideo(&VIDEOMODE_rotate90, value);
}
