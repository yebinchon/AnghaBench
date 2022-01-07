
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usercmd_t ;
struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {TYPE_1__* clients; } ;
struct TYPE_4__ {int lastUsercmd; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

void SV_GetUsercmd( int clientNum, usercmd_t *cmd ) {
 if ( clientNum < 0 || clientNum >= sv_maxclients->integer ) {
  Com_Error( ERR_DROP, "SV_GetUsercmd: bad clientNum:%i", clientNum );
 }
 *cmd = svs.clients[clientNum].lastUsercmd;
}
