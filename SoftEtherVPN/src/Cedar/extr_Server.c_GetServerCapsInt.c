
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int UINT ;
typedef int SERVER ;
typedef int CAPSLIST ;


 int GetCapsInt (int *,char*) ;
 int GetServerCaps (int *,int *) ;
 int Zero (int *,int) ;

UINT GetServerCapsInt(SERVER *s, char *name)
{
 CAPSLIST t;
 UINT ret;

 if (s == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 Zero(&t, sizeof(t));
 GetServerCaps(s, &t);

 ret = GetCapsInt(&t, name);

 return ret;
}
