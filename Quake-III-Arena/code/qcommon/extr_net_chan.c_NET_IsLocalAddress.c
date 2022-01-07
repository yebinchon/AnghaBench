
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ netadr_t ;


 scalar_t__ NA_LOOPBACK ;

qboolean NET_IsLocalAddress( netadr_t adr ) {
 return adr.type == NA_LOOPBACK;
}
