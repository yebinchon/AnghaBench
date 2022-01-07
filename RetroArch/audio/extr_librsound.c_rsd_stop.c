
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ctl_socket; } ;
struct TYPE_7__ {TYPE_1__ conn; } ;
typedef TYPE_2__ rsound_t ;


 int retro_assert (int ) ;
 int rsnd_reset (TYPE_2__*) ;
 int rsnd_send_chunk (int ,char const*,int ,int ) ;
 int rsnd_stop_thread (TYPE_2__*) ;
 int strlen (char const*) ;

int rsd_stop(rsound_t *rd)
{
   retro_assert(rd != ((void*)0));
   rsnd_stop_thread(rd);

   const char buf[] = "RSD    5 STOP";



   rsnd_send_chunk(rd->conn.ctl_socket, buf, strlen(buf), 0);

   rsnd_reset(rd);
   return 0;
}
