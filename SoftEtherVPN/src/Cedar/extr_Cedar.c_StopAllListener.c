
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int ListenerList; } ;
typedef int LISTENER ;
typedef TYPE_1__ CEDAR ;


 int DeleteAll (int ) ;
 int Free (int **) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseListener (int *) ;
 int StopListener (int *) ;
 int ** ToArray (int ) ;
 int UnlockList (int ) ;

void StopAllListener(CEDAR *c)
{
 LISTENER **array;
 UINT i, num;

 if (c == ((void*)0))
 {
  return;
 }

 LockList(c->ListenerList);
 {
  array = ToArray(c->ListenerList);
  num = LIST_NUM(c->ListenerList);
  DeleteAll(c->ListenerList);
 }
 UnlockList(c->ListenerList);

 for (i = 0;i < num;i++)
 {
  StopListener(array[i]);
  ReleaseListener(array[i]);
 }
 Free(array);
}
