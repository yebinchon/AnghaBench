
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {TYPE_1__* Cedar; } ;
struct TYPE_4__ {scalar_t__ Bridge; } ;
typedef TYPE_2__ SERVER ;


 int CEDAR_BETA_SERVER ;
 int CEDAR_BRIDGE_STR ;
 int CEDAR_SERVER_STR ;
 int StrCpy (char*,int ,int ) ;

void GetServerProductNameInternal(SERVER *s, char *name, UINT size)
{

 if (s == ((void*)0) || name == ((void*)0))
 {
  return;
 }
 if (s->Cedar->Bridge)
 {
  StrCpy(name, size, CEDAR_BRIDGE_STR);
 }
 else
 {
  StrCpy(name, size, CEDAR_SERVER_STR);
 }

}
