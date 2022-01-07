
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeProtocol () ;
 int ProtoFree () ;
 scalar_t__ init_cedar_counter ;

void FreeCedar()
{
 if ((--init_cedar_counter) > 0)
 {
  return;
 }


 ProtoFree();


 FreeProtocol();
}
