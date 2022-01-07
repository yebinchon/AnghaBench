
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeCedar () ;
 int StFree () ;
 int StStopServer () ;

void StopProcess()
{

 StStopServer();
 StFree();
 FreeCedar();
}
