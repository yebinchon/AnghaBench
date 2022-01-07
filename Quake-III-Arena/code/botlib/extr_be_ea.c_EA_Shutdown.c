
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeMemory (int *) ;
 int * botinputs ;

void EA_Shutdown(void)
{
 FreeMemory(botinputs);
 botinputs = ((void*)0);
}
