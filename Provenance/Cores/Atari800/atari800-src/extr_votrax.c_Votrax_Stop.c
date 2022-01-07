
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpBuffer; } ;


 int free (int *) ;
 TYPE_1__ votraxsc01_locals ;

void Votrax_Stop(void)
{
 if ( votraxsc01_locals.lpBuffer ) {
  free(votraxsc01_locals.lpBuffer);
  votraxsc01_locals.lpBuffer = ((void*)0);
 }
}
