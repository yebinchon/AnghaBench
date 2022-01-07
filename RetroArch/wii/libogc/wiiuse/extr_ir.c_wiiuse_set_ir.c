
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int unid; } ;


 int WIIMOTE_DISABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_ENABLE_STATE (struct wiimote_t*,int ) ;
 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_HANDSHAKE_COMPLETE ;
 int WIIMOTE_STATE_IR ;
 int WIIMOTE_STATE_IR_INIT ;
 int WIIUSE_DEBUG (char*,...) ;
 int WIIUSE_ERROR (char*) ;
 int WM_CMD_IR ;
 int WM_CMD_IR_2 ;
 int WM_IR_TYPE_BASIC ;
 int WM_IR_TYPE_EXTENDED ;
 int WM_REG_IR ;
 int WM_REG_IR_BLOCK1 ;
 int WM_REG_IR_BLOCK2 ;
 int WM_REG_IR_MODENUM ;
 int get_ir_sens (struct wiimote_t*,char**,char**) ;
 int wiiuse_sendcmd (struct wiimote_t*,int ,int*,int,int *) ;
 int wiiuse_status (struct wiimote_t*,int *) ;
 int wiiuse_write_data (struct wiimote_t*,int ,int*,int,int *) ;

void wiiuse_set_ir(struct wiimote_t *wm,int status)
{
 ubyte buf = 0x00;
 int ir_level = 0;
 char* block1 = ((void*)0);
 char* block2 = ((void*)0);

 if(!wm) return;







 if(!WIIMOTE_IS_SET(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE)) {
  WIIUSE_DEBUG("Tried to enable IR, will wait until handshake finishes.\n");
  if(status)
   WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_IR_INIT);
  else
   WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_IR_INIT);
  return;
 }




 ir_level = get_ir_sens(wm, &block1, &block2);
 if (!ir_level) {
  WIIUSE_ERROR("No IR sensitivity setting selected.");
  return;
 }

 if (status) {

  if (WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR)) {
   wiiuse_status(wm,((void*)0));
   return;
  }
 } else {

  if (!WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR)) {
   wiiuse_status(wm,((void*)0));
   return;
  }
 }

 buf = (status ? 0x04 : 0x00);
 wiiuse_sendcmd(wm,WM_CMD_IR,&buf,1,((void*)0));
 wiiuse_sendcmd(wm,WM_CMD_IR_2,&buf,1,((void*)0));

 if (!status) {
  WIIUSE_DEBUG("Disabled IR cameras for wiimote id %i.", wm->unid);
  wiiuse_status(wm,((void*)0));
  return;
 }


 buf = 0x08;
 wiiuse_write_data(wm,WM_REG_IR,&buf,1,((void*)0));

 wiiuse_write_data(wm, WM_REG_IR_BLOCK1, (ubyte*)block1, 9, ((void*)0));
 wiiuse_write_data(wm, WM_REG_IR_BLOCK2, (ubyte*)block2, 2, ((void*)0));

 if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_EXP)) buf = WM_IR_TYPE_BASIC;
 else buf = WM_IR_TYPE_EXTENDED;
 wiiuse_write_data(wm,WM_REG_IR_MODENUM, &buf, 1, ((void*)0));

 wiiuse_status(wm,((void*)0));
 return;
}
