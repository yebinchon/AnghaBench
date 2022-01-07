
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_t {struct cmd_blk_t* cmd_head; } ;
struct cmd_blk_t {scalar_t__ state; int* data; int len; } ;


 scalar_t__ CMD_READY ;
 scalar_t__ CMD_SENT ;
 int WIIMOTE_IS_CONNECTED (struct wiimote_t*) ;
 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_RUMBLE ;
 int wiiuse_io_write (struct wiimote_t*,int*,int ) ;

void wiiuse_send_next_command(struct wiimote_t *wm)
{
 struct cmd_blk_t *cmd = wm->cmd_head;

 if(!wm || !WIIMOTE_IS_CONNECTED(wm)) return;

 if(!cmd) return;
 if(cmd->state!=CMD_READY) return;

 cmd->state = CMD_SENT;





 wiiuse_io_write(wm,cmd->data,cmd->len);
}
