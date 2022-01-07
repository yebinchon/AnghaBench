
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int SH2_struct ;


 int * MSH2 ;
 void* get_addr_ht (void*) ;
 void* master_ip ;
 void* master_pc ;
 void* slave_ip ;
 void* slave_pc ;

void SH2DynarecSetPC(SH2_struct *context, u32 value) {

  if(context==MSH2) {
    master_pc=value;
    master_ip=get_addr_ht(value);
  }
  else {
    slave_pc=value;
    slave_ip=get_addr_ht(value+1);
  }
}
