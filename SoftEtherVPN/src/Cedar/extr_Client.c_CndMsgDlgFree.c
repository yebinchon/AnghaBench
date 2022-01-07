
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;


 int Disconnect (int *) ;
 int ReleaseSock (int *) ;

void CndMsgDlgFree(SOCK *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 Disconnect(s);
 ReleaseSock(s);
}
