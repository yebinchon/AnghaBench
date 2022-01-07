
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitCedar () ;
 int StInit () ;
 int StStartServer (int) ;

void StartProcess()
{

 InitCedar();
 StInit();
 StStartServer(1);
}
