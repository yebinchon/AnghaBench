
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * InputType ;
 int * UsrInputType ;

void InputUserActiveFix(void)
{
 int x;
 for(x=0;x<3;x++) InputType[x]=UsrInputType[x];
}
