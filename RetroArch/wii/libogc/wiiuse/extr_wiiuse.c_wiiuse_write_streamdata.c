
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int cmdq; } ;
struct cmd_blk_t {int len; int* data; int cb; } ;
typedef int cmd_blk_cb ;


 int WIIMOTE_IS_CONNECTED (struct wiimote_t*) ;
 int WM_CMD_STREAM_DATA ;
 scalar_t__ __lwp_queue_get (int *) ;
 int __wiiuse_push_command (struct wiimote_t*,struct cmd_blk_t*) ;
 int memcpy (int*,int*,int) ;

int wiiuse_write_streamdata(struct wiimote_t *wm,ubyte *data,ubyte len,cmd_blk_cb cb)
{
 struct cmd_blk_t *cmd;

 if(!wm || !WIIMOTE_IS_CONNECTED(wm)) return 0;
 if(!data || !len || len>20) return 0;

 cmd = (struct cmd_blk_t*)__lwp_queue_get(&wm->cmdq);
 if(!cmd) return 0;

 cmd->cb = cb;
 cmd->len = 22;
 cmd->data[0] = WM_CMD_STREAM_DATA;
 cmd->data[1] = (len<<3);
 memcpy(cmd->data+2,data,len);
 __wiiuse_push_command(wm,cmd);

 return 1;
}
