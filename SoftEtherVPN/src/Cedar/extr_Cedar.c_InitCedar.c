
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitProtocol () ;
 int ProtoInit () ;
 int init_cedar_counter ;

void InitCedar()
{
 if ((init_cedar_counter++) > 0)
 {
  return;
 }


 InitProtocol();


 ProtoInit();
}
