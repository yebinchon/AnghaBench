
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Sock; } ;
typedef TYPE_1__ NOTIFY_CLIENT ;


 int Disconnect (int ) ;

void CcStopNotify(NOTIFY_CLIENT *n)
{

 if (n == ((void*)0))
 {
  return;
 }

 Disconnect(n->Sock);
}
