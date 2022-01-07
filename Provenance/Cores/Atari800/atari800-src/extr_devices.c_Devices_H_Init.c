
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_H_CloseAll () ;
 char** Devices_h_current_dir ;
 int Log_print (char*) ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_H_Init(void)
{
 if (devbug)
  Log_print("HHINIT");
 Devices_h_current_dir[0][0] = '\0';
 Devices_h_current_dir[1][0] = '\0';
 Devices_h_current_dir[2][0] = '\0';
 Devices_h_current_dir[3][0] = '\0';
 Devices_H_CloseAll();
}
