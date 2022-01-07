
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct sockaddr_un {int dummy; } ;
struct TYPE_12__ {int sun_path; int sun_family; } ;
struct TYPE_13__ {TYPE_1__ un; } ;
struct TYPE_14__ {int len; TYPE_2__ addr; } ;
typedef TYPE_3__ const network_address ;
typedef int gint ;
typedef TYPE_3__ gchar ;


 int AF_UNIX ;
 int g_critical (char*,TYPE_3__ const*) ;
 int g_return_val_if_fail (TYPE_3__ const*,int) ;
 int network_address_refresh_name (TYPE_3__ const*) ;
 int strcpy (int ,TYPE_3__ const*) ;
 int strlen (TYPE_3__ const*) ;

__attribute__((used)) static gint network_address_set_address_un(network_address *addr, const gchar *address) {
 g_return_val_if_fail(addr, -1);
 g_return_val_if_fail(address, -1);
 return -1;

}
