
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usercmd_t ;
typedef int qboolean ;
struct TYPE_2__ {int cmdNumber; int * cmds; } ;


 int CMD_BACKUP ;
 int CMD_MASK ;
 int Com_Error (int ,char*,int,int) ;
 int ERR_DROP ;
 TYPE_1__ cl ;
 int qfalse ;
 int qtrue ;

qboolean CL_GetUserCmd( int cmdNumber, usercmd_t *ucmd ) {



 if ( cmdNumber > cl.cmdNumber ) {
  Com_Error( ERR_DROP, "CL_GetUserCmd: %i >= %i", cmdNumber, cl.cmdNumber );
 }



 if ( cmdNumber <= cl.cmdNumber - CMD_BACKUP ) {
  return qfalse;
 }

 *ucmd = cl.cmds[ cmdNumber & CMD_MASK ];

 return qtrue;
}
