
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pool; } ;
typedef TYPE_1__ network_connection_pool_entry ;
typedef int network_connection_pool ;


 short EV_READ ;
 int FIONREAD ;
 int errno ;
 int g_critical (char*,int,int) ;
 int g_strerror (int ) ;
 scalar_t__ ioctlsocket (int,int ,int*) ;
 int network_connection_pool_remove (int *,TYPE_1__*) ;

__attribute__((used)) static void network_mysqld_con_idle_handle(int event_fd, short events, void *user_data) {
 network_connection_pool_entry *pool_entry = user_data;
 network_connection_pool *pool = pool_entry->pool;

 if (events == EV_READ) {
  int b = -1;





  if (ioctlsocket(event_fd, FIONREAD, &b)) {
   g_critical("ioctl(%d, FIONREAD, ...) failed: %s", event_fd, g_strerror(errno));
  } else if (b != 0) {
   g_critical("ioctl(%d, FIONREAD, ...) said there is something to read, oops: %d", event_fd, b);
  } else {





   network_connection_pool_remove(pool, pool_entry);
  }
 }
}
