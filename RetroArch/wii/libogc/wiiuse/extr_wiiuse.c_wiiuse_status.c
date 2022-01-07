
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int dummy; } ;
typedef int cmd_blk_cb ;


 int WIIMOTE_IS_CONNECTED (struct wiimote_t*) ;
 int WM_CMD_CTRL_STATUS ;
 int wiiuse_sendcmd (struct wiimote_t*,int ,int*,int,int ) ;

void wiiuse_status(struct wiimote_t *wm,cmd_blk_cb cb)
{
 ubyte buf;

 if(!wm || !WIIMOTE_IS_CONNECTED(wm)) return;

 buf = 0x00;
 wiiuse_sendcmd(wm,WM_CMD_CTRL_STATUS,&buf,1,cb);
}
