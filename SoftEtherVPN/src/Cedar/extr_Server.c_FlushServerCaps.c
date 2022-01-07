
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int SERVER ;
typedef int CAPSLIST ;


 int DestroyServerCapsCache (int *) ;
 int GetServerCaps (int *,int *) ;
 int Zero (int *,int) ;

void FlushServerCaps(SERVER *s)
{
 CAPSLIST t;

 if (s == ((void*)0))
 {
  return;
 }

 DestroyServerCapsCache(s);

 Zero(&t, sizeof(t));
 GetServerCaps(s, &t);
}
