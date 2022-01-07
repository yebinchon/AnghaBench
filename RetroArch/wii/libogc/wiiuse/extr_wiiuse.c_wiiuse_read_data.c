
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uword ;
typedef int uint ;
typedef int ubyte ;
struct wiimote_t {int cmdq; } ;
struct TYPE_2__ {int size; int addr; } ;
struct op_t {TYPE_1__ readdata; scalar_t__ wait; int * buffer; int cmd; } ;
struct cmd_blk_t {int len; scalar_t__ data; int cb; } ;
typedef int cmd_blk_cb ;


 int BIG_ENDIAN_LONG (int ) ;
 int BIG_ENDIAN_SHORT (scalar_t__) ;
 int WIIMOTE_IS_CONNECTED (struct wiimote_t*) ;
 int WM_CMD_READ_DATA ;
 scalar_t__ __lwp_queue_get (int *) ;
 int __wiiuse_push_command (struct wiimote_t*,struct cmd_blk_t*) ;

int wiiuse_read_data(struct wiimote_t *wm,ubyte *buffer,uint addr,uword len,cmd_blk_cb cb)
{
 struct op_t *op;
 struct cmd_blk_t *cmd;

 if(!wm || !WIIMOTE_IS_CONNECTED(wm)) return 0;
 if(!buffer || !len) return 0;

 cmd = (struct cmd_blk_t*)__lwp_queue_get(&wm->cmdq);
 if(!cmd) return 0;

 cmd->cb = cb;
 cmd->len = 7;

 op = (struct op_t*)cmd->data;
 op->cmd = WM_CMD_READ_DATA;
 op->buffer = buffer;
 op->wait = len;
 op->readdata.addr = BIG_ENDIAN_LONG(addr);
 op->readdata.size = BIG_ENDIAN_SHORT(len);
 __wiiuse_push_command(wm,cmd);

 return 1;
}
