
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_3__ {int Sock; } ;
typedef TYPE_1__ NOTIFY_CLIENT ;


 int RecvAll (int ,int *,int,int) ;

bool CcWaitNotify(NOTIFY_CLIENT *n)
{
 UCHAR c;

 if (n == ((void*)0))
 {
  return 0;
 }


 if (RecvAll(n->Sock, &c, 1, 0) == 0)
 {

  return 0;
 }

 return 1;
}
