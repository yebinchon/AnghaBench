
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int used; void* cmds; } ;
typedef TYPE_1__ renderCommandList_t ;
struct TYPE_8__ {TYPE_1__ commands; } ;
struct TYPE_7__ {int (* Error ) (int ,char*,int) ;} ;
struct TYPE_6__ {size_t smpFrame; } ;


 int ERR_FATAL ;
 int MAX_RENDER_COMMANDS ;
 TYPE_4__** backEndData ;
 TYPE_3__ ri ;
 int stub1 (int ,char*,int) ;
 TYPE_2__ tr ;

void *R_GetCommandBuffer( int bytes ) {
 renderCommandList_t *cmdList;

 cmdList = &backEndData[tr.smpFrame]->commands;


 if ( cmdList->used + bytes + 4 > MAX_RENDER_COMMANDS ) {
  if ( bytes > MAX_RENDER_COMMANDS - 4 ) {
   ri.Error( ERR_FATAL, "R_GetCommandBuffer: bad size %i", bytes );
  }

  return ((void*)0);
 }

 cmdList->used += bytes;

 return cmdList->cmds + cmdList->used - bytes;
}
