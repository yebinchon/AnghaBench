
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int userinfo; } ;
typedef TYPE_1__ client_t ;
struct TYPE_7__ {int clients; } ;


 int Cmd_Argv (int) ;
 int GAME_CLIENT_USERINFO_CHANGED ;
 int Q_strncpyz (int ,int ,int) ;
 int SV_UserinfoChanged (TYPE_1__*) ;
 int VM_Call (int ,int ,TYPE_1__*) ;
 int gvm ;
 TYPE_2__ svs ;

__attribute__((used)) static void SV_UpdateUserinfo_f( client_t *cl ) {
 Q_strncpyz( cl->userinfo, Cmd_Argv(1), sizeof(cl->userinfo) );

 SV_UserinfoChanged( cl );

 VM_Call( gvm, GAME_CLIENT_USERINFO_CHANGED, cl - svs.clients );
}
