
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calibration_count ;
 scalar_t__ client_delay ;
 int client_spin ;
 int client_spin_loop (int,int ) ;
 int client_work_atom ;
 int usleep (scalar_t__) ;

__attribute__((used)) static void *
client_work(void)
{

 if (client_spin) {
  client_spin_loop(calibration_count*client_spin,
     client_work_atom);
 }

 if (client_delay) {
  usleep(client_delay);
 }
 return ((void*)0);
}
