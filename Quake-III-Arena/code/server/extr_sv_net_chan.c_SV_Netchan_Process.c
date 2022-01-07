
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
typedef int msg_t ;
struct TYPE_4__ {int netchan; } ;
typedef TYPE_1__ client_t ;


 int Netchan_Process (int *,int *) ;
 int SV_Netchan_Decode (TYPE_1__*,int *) ;
 int qfalse ;
 int qtrue ;

qboolean SV_Netchan_Process( client_t *client, msg_t *msg ) {
 int ret;
 ret = Netchan_Process( &client->netchan, msg );
 if (!ret)
  return qfalse;
 SV_Netchan_Decode( client, msg );
 return qtrue;
}
