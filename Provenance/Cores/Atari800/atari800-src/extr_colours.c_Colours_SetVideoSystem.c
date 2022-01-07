
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Colours_Update () ;
 int UpdateModeDependentPointers (int) ;

void Colours_SetVideoSystem(int mode)
{
 UpdateModeDependentPointers(mode);

 Colours_Update();
}
