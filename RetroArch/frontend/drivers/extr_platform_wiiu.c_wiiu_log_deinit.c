
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int socketclose (int) ;
 int wiiu_log_socket ;

__attribute__((used)) static void wiiu_log_deinit(void)
{
   if(wiiu_log_socket >= 0)
   {
      socketclose(wiiu_log_socket);
      wiiu_log_socket = -1;
   }
}
