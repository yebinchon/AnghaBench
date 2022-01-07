
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UPDATE_CLIENT_SETTING ;
struct TYPE_3__ {int HaltEvent; int Setting; } ;
typedef TYPE_1__ UPDATE_CLIENT ;


 int Copy (int *,int *,int) ;
 int Set (int ) ;

void SetUpdateClientSetting(UPDATE_CLIENT *c, UPDATE_CLIENT_SETTING *s)
{

 if (c == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 Copy(&c->Setting, s, sizeof(UPDATE_CLIENT_SETTING));

 Set(c->HaltEvent);
}
