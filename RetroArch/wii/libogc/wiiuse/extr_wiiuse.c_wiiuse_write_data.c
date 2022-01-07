
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int ubyte ;
struct wiimote_t {int cmdq; } ;
struct TYPE_2__ {int size; int data; int addr; } ;
struct op_t {TYPE_1__ writedata; scalar_t__ wait; int * buffer; int cmd; } ;
struct cmd_blk_t {int len; scalar_t__ data; int cb; } ;
typedef int cmd_blk_cb ;


 int BIG_ENDIAN_LONG (int ) ;
 int WIIMOTE_IS_CONNECTED (struct wiimote_t*) ;
 int WM_CMD_WRITE_DATA ;
 scalar_t__ __lwp_queue_get (int *) ;
 int __wiiuse_push_command (struct wiimote_t*,struct cmd_blk_t*) ;
 int memcpy (int,int*,int) ;
 int memset (int,int ,int) ;

int wiiuse_write_data(struct wiimote_t *wm,uint addr,ubyte *data,ubyte len,cmd_blk_cb cb)
{
 struct op_t *op;
 struct cmd_blk_t *cmd;

 if(!wm || !WIIMOTE_IS_CONNECTED(wm)) return 0;
 if(!data || !len) return 0;

 cmd = (struct cmd_blk_t*)__lwp_queue_get(&wm->cmdq);
 if(!cmd) return 0;

 cmd->cb = cb;
 cmd->len = 22;

 op = (struct op_t*)cmd->data;
 op->cmd = WM_CMD_WRITE_DATA;
 op->buffer = ((void*)0);
 op->wait = 0;
 op->writedata.addr = BIG_ENDIAN_LONG(addr);
 op->writedata.size = (len&0x0f);
 memcpy(op->writedata.data,data,len);
 memset(op->writedata.data+len,0,(16 - len));
 __wiiuse_push_command(wm,cmd);

 return 1;
}
