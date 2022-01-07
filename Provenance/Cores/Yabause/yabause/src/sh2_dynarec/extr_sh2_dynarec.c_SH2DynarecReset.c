
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SH2_struct ;


 int * MSH2 ;
 int * SSH2 ;
 scalar_t__ master_cc ;
 scalar_t__ slave_cc ;
 void* slave_ip ;

void SH2DynarecReset(SH2_struct *context) {


  if(context==MSH2) master_cc=0;
  if(context==SSH2) { slave_ip=(void*)0; slave_cc=0; }
}
