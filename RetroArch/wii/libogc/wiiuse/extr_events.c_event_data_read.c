
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uword ;
typedef int ubyte ;
struct wiimote_t {int cmdq; int event; struct cmd_blk_t* cmd_head; } ;
struct TYPE_2__ {scalar_t__ size; int addr; } ;
struct op_t {scalar_t__ wait; TYPE_1__ readdata; scalar_t__ buffer; } ;
struct cmd_blk_t {scalar_t__ state; scalar_t__* data; int node; int (* cb ) (struct wiimote_t*,scalar_t__,scalar_t__) ;struct cmd_blk_t* next; } ;


 scalar_t__ BIG_ENDIAN_SHORT (scalar_t__) ;
 void* CMD_DONE ;
 scalar_t__ CMD_SENT ;
 int WIIUSE_READ_DATA ;
 scalar_t__ WM_CMD_READ_DATA ;
 int __lwp_queue_append (int *,int *) ;
 int memcpy (scalar_t__,int*,int) ;
 int stub1 (struct wiimote_t*,scalar_t__,scalar_t__) ;
 int stub2 (struct wiimote_t*,scalar_t__,scalar_t__) ;
 int wiiuse_pressed_buttons (struct wiimote_t*,int*) ;
 int wiiuse_send_next_command (struct wiimote_t*) ;

__attribute__((used)) static void event_data_read(struct wiimote_t *wm,ubyte *msg)
{
 ubyte err;
 ubyte len;
 uword offset;
 struct op_t *op;
 struct cmd_blk_t *cmd = wm->cmd_head;

 wiiuse_pressed_buttons(wm,msg);

 if(!cmd) return;
 if(!(cmd->state==CMD_SENT && cmd->data[0]==WM_CMD_READ_DATA)) return;



 err = msg[2]&0x0f;
 op = (struct op_t*)cmd->data;
 if(err) {
  wm->cmd_head = cmd->next;

  cmd->state = CMD_DONE;
  if(cmd->cb!=((void*)0)) cmd->cb(wm,op->buffer,(op->readdata.size - op->wait));

  __lwp_queue_append(&wm->cmdq,&cmd->node);
  wiiuse_send_next_command(wm);
  return;
 }

 len = ((msg[2]&0xf0)>>4)+1;
 offset = BIG_ENDIAN_SHORT(*(uword*)(msg+3));



 op->readdata.addr = (op->readdata.addr&0xffff);
 op->wait -= len;
 if(op->wait>=op->readdata.size) op->wait = 0;

 memcpy((op->buffer+offset-op->readdata.addr),(msg+5),len);
 if(!op->wait) {
  wm->cmd_head = cmd->next;

  wm->event = WIIUSE_READ_DATA;
  cmd->state = CMD_DONE;
  if(cmd->cb!=((void*)0)) cmd->cb(wm,op->buffer,op->readdata.size);

  __lwp_queue_append(&wm->cmdq,&cmd->node);
  wiiuse_send_next_command(wm);
 }
}
