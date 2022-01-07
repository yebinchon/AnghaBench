
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_sid ;
 int network_deinit () ;
 int printf (char*) ;
 scalar_t__ socket_close (int ) ;

void logger_shutdown (void)
{
   if (socket_close(g_sid) < 0)
      printf("Could not close socket.\n");

   network_deinit();
}
