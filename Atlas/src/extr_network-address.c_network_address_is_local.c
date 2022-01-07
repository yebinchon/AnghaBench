
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ sa_family; } ;
struct TYPE_12__ {int s_addr; } ;
struct TYPE_8__ {TYPE_7__ sin_addr; int sin_port; } ;
struct TYPE_10__ {TYPE_2__ common; TYPE_1__ ipv4; } ;
struct TYPE_11__ {TYPE_3__ addr; } ;
typedef TYPE_4__ network_address ;
typedef int gboolean ;




 int FALSE ;
 int G_STRLOC ;
 int TRUE ;
 int g_critical (char*,int ,int) ;
 int g_debug (char*,int ,int ,int ) ;
 int g_message (char*,int ,scalar_t__,scalar_t__) ;
 int inet_ntoa (TYPE_7__) ;
 int ntohs (int ) ;

gboolean network_address_is_local(network_address *dst_addr, network_address *src_addr) {
 if (src_addr->addr.common.sa_family != dst_addr->addr.common.sa_family) {
  g_message("%s: is-local family %d != %d",
    G_STRLOC,
    src_addr->addr.common.sa_family,
    dst_addr->addr.common.sa_family
    );
  return FALSE;
 }

 switch (src_addr->addr.common.sa_family) {
 case 129:



  g_debug("%s: is-local src: %s(:%d) =? ...",
    G_STRLOC,
    inet_ntoa(src_addr->addr.ipv4.sin_addr),
    ntohs(src_addr->addr.ipv4.sin_port));

  g_debug("%s: is-local dst: %s(:%d)",
    G_STRLOC,
    inet_ntoa(dst_addr->addr.ipv4.sin_addr),
    ntohs(dst_addr->addr.ipv4.sin_port)
    );

  return (dst_addr->addr.ipv4.sin_addr.s_addr == src_addr->addr.ipv4.sin_addr.s_addr);





 default:
  g_critical("%s: sa_family = %d", G_STRLOC, src_addr->addr.common.sa_family);
  return FALSE;
 }
}
