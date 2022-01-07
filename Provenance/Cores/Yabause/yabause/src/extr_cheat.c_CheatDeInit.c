
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cheatlist ;
 int free (int *) ;

void CheatDeInit(void)
{
   if (cheatlist)
      free(cheatlist);
   cheatlist = ((void*)0);
}
