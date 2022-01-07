
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int SaveLog; } ;
struct TYPE_5__ {int Online; TYPE_3__ Option; int AdminPort; } ;
typedef TYPE_1__ NAT ;


 int DEFAULT_NAT_ADMIN_PORT ;
 int NiSetDefaultVhOption (TYPE_1__*,TYPE_3__*) ;

void NiInitDefaultConfig(NAT *n)
{

 if (n == ((void*)0))
 {
  return;
 }


 NiSetDefaultVhOption(n, &n->Option);


 n->AdminPort = DEFAULT_NAT_ADMIN_PORT;


 n->Online = 0;


 n->Option.SaveLog = 1;
}
