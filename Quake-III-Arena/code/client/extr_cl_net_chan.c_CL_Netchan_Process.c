
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
typedef int netchan_t ;
struct TYPE_5__ {scalar_t__ cursize; } ;
typedef TYPE_1__ msg_t ;


 int CL_Netchan_Decode (TYPE_1__*) ;
 int Netchan_Process (int *,TYPE_1__*) ;
 int newsize ;
 int qfalse ;
 int qtrue ;

qboolean CL_Netchan_Process( netchan_t *chan, msg_t *msg ) {
 int ret;

 ret = Netchan_Process( chan, msg );
 if (!ret)
  return qfalse;
 CL_Netchan_Decode( msg );
 newsize += msg->cursize;
 return qtrue;
}
