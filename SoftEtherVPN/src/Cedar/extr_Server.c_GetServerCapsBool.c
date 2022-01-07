
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;


 scalar_t__ GetServerCapsInt (int *,char*) ;

bool GetServerCapsBool(SERVER *s, char *name)
{
 return (GetServerCapsInt(s, name) == 0) ? 0 : 1;
}
