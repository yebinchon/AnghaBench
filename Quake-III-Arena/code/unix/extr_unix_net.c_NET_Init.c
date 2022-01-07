
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;


 TYPE_1__* Cvar_Get (char*,char*,int ) ;
 int NET_OpenIP () ;
 TYPE_1__* noudp ;

void NET_Init (void)
{
 noudp = Cvar_Get ("net_noudp", "0", 0);

 if (! noudp->value) {
  NET_OpenIP ();
 }
}
