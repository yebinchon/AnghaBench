
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cond; void* cond_mutex; void* mutex; } ;
struct TYPE_7__ {int socket; int ctl_socket; } ;
struct TYPE_9__ {TYPE_2__ thread; void* cb_lock; TYPE_1__ conn; } ;
typedef TYPE_3__ rsound_t ;


 int CELL_SYSMODULE_NET ;
 int* RSD_DEFAULT_HOST ;
 int* RSD_DEFAULT_PORT ;
 int RSD_FORMAT ;
 int RSD_HOST ;
 int RSD_PORT ;
 int RSD_S16_LE ;
 TYPE_3__* calloc (int,int) ;
 int cellSysmoduleLoadModule (int ) ;
 scalar_t__ init_count ;
 int retro_assert (int ) ;
 int rsd_set_param (TYPE_3__*,int ,int*) ;
 int scond_new () ;
 void* slock_new () ;
 int sys_net_initialize_network () ;

int rsd_init(rsound_t** rsound)
{
   *rsound = calloc(1, sizeof(rsound_t));
   if ( *rsound == ((void*)0) )
      return -1;

   retro_assert(rsound != ((void*)0));

   (*rsound)->conn.socket = -1;
   (*rsound)->conn.ctl_socket = -1;

   (*rsound)->thread.mutex = slock_new();
   (*rsound)->thread.cond_mutex = slock_new();
   (*rsound)->cb_lock = slock_new();
   (*rsound)->thread.cond = scond_new();


   int format = RSD_S16_LE;
   rsd_set_param(*rsound, RSD_FORMAT, &format);

   rsd_set_param(*rsound, RSD_HOST, RSD_DEFAULT_HOST);
   rsd_set_param(*rsound, RSD_PORT, RSD_DEFAULT_PORT);
   return 0;
}
