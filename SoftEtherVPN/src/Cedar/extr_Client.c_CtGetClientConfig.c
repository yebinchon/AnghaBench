
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int Config; } ;
typedef int CLIENT_CONFIG ;
typedef TYPE_1__ CLIENT ;


 int Copy (int *,int *,int) ;
 int Lock (int ) ;
 int Unlock (int ) ;

bool CtGetClientConfig(CLIENT *c, CLIENT_CONFIG *o)
{

 if (c == ((void*)0) || o == ((void*)0))
 {
  return 0;
 }

 Lock(c->lock);
 {
  Copy(o, &c->Config, sizeof(CLIENT_CONFIG));
 }
 Unlock(c->lock);

 return 1;
}
