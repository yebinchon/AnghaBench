
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ can_unlink_socket; TYPE_3__* name; } ;
typedef TYPE_1__ network_address ;
typedef char gchar ;
struct TYPE_6__ {char* str; } ;


 scalar_t__ EACCES ;
 scalar_t__ EPERM ;
 int G_STRLOC ;
 scalar_t__ TRUE ;
 scalar_t__ errno ;
 int g_critical (char*,int ,char*,int ,scalar_t__) ;
 int g_debug (char*,int ,char*) ;
 int g_free (TYPE_1__*) ;
 int g_remove (char*) ;
 int g_string_free (TYPE_3__*,scalar_t__) ;
 int strerror (scalar_t__) ;

void network_address_free(network_address *addr) {

 if (!addr) return;






 if (addr->can_unlink_socket == TRUE && addr->name != ((void*)0) &&
   addr->name->str != ((void*)0)) {
  gchar *name;
  int ret;

  name = addr->name->str;
  if (name[0] == '/') {
   ret = g_remove(name);
   if (ret == 0) {
    g_debug("%s: removing socket %s successful",
     G_STRLOC, name);
   } else {
    if (errno != EPERM && errno != EACCES) {
     g_critical("%s: removing socket %s failed: %s (%d)",
      G_STRLOC, name, strerror(errno), errno);
    }
   }
  }
 }


 g_string_free(addr->name, TRUE);
 g_free(addr);
}
