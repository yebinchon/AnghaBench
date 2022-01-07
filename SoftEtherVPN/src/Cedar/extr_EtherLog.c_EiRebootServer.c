
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THREAD ;


 int EiRebootServerThread ;
 int * NewThread (int ,int *) ;
 int ReleaseThread (int *) ;

void EiRebootServer()
{
 THREAD *t;

 t = NewThread(EiRebootServerThread, ((void*)0));
 ReleaseThread(t);
}
