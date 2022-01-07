
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;
typedef int THREAD ;


 int NatThreadMain (int *) ;
 int NoticeThreadInit (int *) ;

void NatThread(THREAD *t, void *param)
{

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }


 NoticeThreadInit(t);

 NatThreadMain((VH *)param);
}
