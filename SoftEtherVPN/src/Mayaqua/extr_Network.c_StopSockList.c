
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int SockList; } ;
typedef TYPE_1__ SOCKLIST ;
typedef int SOCK ;


 int DeleteAll (int ) ;
 int Disconnect (int *) ;
 int Free (int **) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseSock (int *) ;
 int ** ToArray (int ) ;
 int UnlockList (int ) ;

void StopSockList(SOCKLIST *sl)
{
 SOCK **ss;
 UINT num, i;

 if (sl == ((void*)0))
 {
  return;
 }

 LockList(sl->SockList);
 {
  num = LIST_NUM(sl->SockList);
  ss = ToArray(sl->SockList);

  DeleteAll(sl->SockList);
 }
 UnlockList(sl->SockList);

 for (i = 0;i < num;i++)
 {
  SOCK *s = ss[i];

  Disconnect(s);
  ReleaseSock(s);
 }

 Free(ss);
}
