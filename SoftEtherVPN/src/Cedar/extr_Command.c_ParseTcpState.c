
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsEmptyStr (char*) ;
 scalar_t__ StartWith (char*,char*) ;

bool ParseTcpState(char *src, bool *check_tcp_state, bool *established)
{
 bool ok = 0;

 if(src == ((void*)0))
 {
  return 0;
 }

 if(check_tcp_state != ((void*)0) && established != ((void*)0))
 {
  ok = 1;
 }

 if (IsEmptyStr(src) == 0)
 {
  if (StartWith("Established", src) == 0)
  {
   if(ok != 0)
   {
    *check_tcp_state = 1;
    *established = 1;
   }
  }
  else if (StartWith("Unestablished", src) == 0)
  {
   if(ok != 0)
   {
    *check_tcp_state = 1;
    *established = 0;
   }
  }
  else
  {

   return 0;
  }
 }
 else
 {
  if(ok != 0)
  {
   *check_tcp_state = 0;
   *established = 0;
  }
 }

 return 1;
}
