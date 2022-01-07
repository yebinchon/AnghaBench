
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int L2TP_TUNNEL ;


 int * GetSessionFromId (int *,int) ;

UINT GenerateNewSessionIdEx(L2TP_TUNNEL *t, bool is_32bit)
{
 UINT i;
 UINT max_number = 0xffff;

 if (t == ((void*)0))
 {
  return 0;
 }

 if (is_32bit)
 {
  max_number = 0xfffffffe;
 }

 for (i = 1;i <= max_number;i++)
 {
  if (GetSessionFromId(t, i) == ((void*)0))
  {
   return i;
  }
 }

 return 0;
}
