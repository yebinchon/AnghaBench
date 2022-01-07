
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ubyte ;
struct wiimote_t {int cmdq; int event; struct cmd_blk_t* cmd_head; } ;
struct cmd_blk_t {scalar_t__ state; scalar_t__* data; int node; int (* cb ) (struct wiimote_t*,int *,int ) ;struct cmd_blk_t* next; } ;


 scalar_t__ CMD_DONE ;
 scalar_t__ CMD_SENT ;
 int WIIUSE_ACK ;
 scalar_t__ WM_CMD_CTRL_STATUS ;
 scalar_t__ WM_CMD_READ_DATA ;
 int __lwp_queue_append (int *,int *) ;
 int stub1 (struct wiimote_t*,int *,int ) ;
 int wiiuse_pressed_buttons (struct wiimote_t*,scalar_t__*) ;
 int wiiuse_send_next_command (struct wiimote_t*) ;

__attribute__((used)) static void event_ack(struct wiimote_t *wm,ubyte *msg)
{
 struct cmd_blk_t *cmd = wm->cmd_head;

 wiiuse_pressed_buttons(wm,msg);

 if(!cmd || cmd->state!=CMD_SENT || cmd->data[0]==WM_CMD_READ_DATA || cmd->data[0]==WM_CMD_CTRL_STATUS || cmd->data[0]!=msg[2] || msg[3]) {

  return;
 }



 wm->cmd_head = cmd->next;

 wm->event = WIIUSE_ACK;
 cmd->state = CMD_DONE;
 if(cmd->cb) cmd->cb(wm,((void*)0),0);

 __lwp_queue_append(&wm->cmdq,&cmd->node);
 wiiuse_send_next_command(wm);
}
