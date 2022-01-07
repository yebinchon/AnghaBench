
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {TYPE_1__* clients; } ;
struct TYPE_4__ {int userinfo; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int Q_strncpyz (char*,int ,int) ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

void SV_GetUserinfo( int index, char *buffer, int bufferSize ) {
 if ( bufferSize < 1 ) {
  Com_Error( ERR_DROP, "SV_GetUserinfo: bufferSize == %i", bufferSize );
 }
 if ( index < 0 || index >= sv_maxclients->integer ) {
  Com_Error (ERR_DROP, "SV_GetUserinfo: bad index %i\n", index);
 }
 Q_strncpyz( buffer, svs.clients[ index ].userinfo, bufferSize );
}
