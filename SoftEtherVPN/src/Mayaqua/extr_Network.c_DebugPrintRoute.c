
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int ROUTE_ENTRY ;


 int Debug (char*,char*) ;
 int IsDebug () ;
 int MAX_SIZE ;
 int RouteToStr (char*,int,int *) ;

void DebugPrintRoute(ROUTE_ENTRY *e)
{
 char tmp[MAX_SIZE];

 if (e == ((void*)0))
 {
  return;
 }

 if (IsDebug() == 0)
 {
  return;
 }

 RouteToStr(tmp, sizeof(tmp), e);

 Debug("%s\n", tmp);
}
