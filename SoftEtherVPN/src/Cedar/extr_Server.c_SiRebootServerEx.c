
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THREAD ;


 int * NewThread (int ,void*) ;
 int ReleaseThread (int *) ;
 int SiRebootServerThread ;
 int server_reset_setting ;

void SiRebootServerEx(bool bridge, bool reset_setting)
{
 THREAD *t;

 server_reset_setting = reset_setting;

 t = NewThread(SiRebootServerThread, (void *)bridge);
 ReleaseThread(t);
}
