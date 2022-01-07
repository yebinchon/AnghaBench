
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int L2TP_SESSION ;


 int Free (int *) ;

void FreeL2TPSession(L2TP_SESSION *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 Free(s);
}
