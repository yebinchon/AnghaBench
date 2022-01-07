
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int leds; } ;
typedef int cmd_blk_cb ;


 int WIIMOTE_IS_CONNECTED (struct wiimote_t*) ;
 int WM_CMD_LED ;
 int wiiuse_sendcmd (struct wiimote_t*,int ,int*,int,int ) ;

void wiiuse_set_leds(struct wiimote_t *wm,int leds,cmd_blk_cb cb)
{
 ubyte buf;

 if(!wm || !WIIMOTE_IS_CONNECTED(wm)) return;

 wm->leds = (leds&0xf0);

 buf = wm->leds;
 wiiuse_sendcmd(wm,WM_CMD_LED,&buf,1,cb);
}
