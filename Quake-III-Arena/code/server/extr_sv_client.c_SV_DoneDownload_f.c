
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ client_t ;


 int Com_DPrintf (char*,int ) ;
 int SV_SendClientGameState (TYPE_1__*) ;

void SV_DoneDownload_f( client_t *cl ) {
 Com_DPrintf( "clientDownload: %s Done\n", cl->name);

 SV_SendClientGameState(cl);
}
