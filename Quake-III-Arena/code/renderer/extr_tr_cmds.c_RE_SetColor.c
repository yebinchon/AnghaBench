
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float* color; int commandId; } ;
typedef TYPE_1__ setColorCommand_t ;
struct TYPE_5__ {int registered; } ;


 int RC_SET_COLOR ;
 TYPE_1__* R_GetCommandBuffer (int) ;
 TYPE_2__ tr ;

void RE_SetColor( const float *rgba ) {
 setColorCommand_t *cmd;

  if ( !tr.registered ) {
    return;
  }
 cmd = R_GetCommandBuffer( sizeof( *cmd ) );
 if ( !cmd ) {
  return;
 }
 cmd->commandId = RC_SET_COLOR;
 if ( !rgba ) {
  static float colorWhite[4] = { 1, 1, 1, 1 };

  rgba = colorWhite;
 }

 cmd->color[0] = rgba[0];
 cmd->color[1] = rgba[1];
 cmd->color[2] = rgba[2];
 cmd->color[3] = rgba[3];
}
