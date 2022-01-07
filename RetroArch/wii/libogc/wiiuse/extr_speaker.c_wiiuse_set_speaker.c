
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int unid; } ;


 int WIIMOTE_DISABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_ENABLE_STATE (struct wiimote_t*,int ) ;
 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_HANDSHAKE_COMPLETE ;
 int WIIMOTE_STATE_SPEAKER ;
 int WIIMOTE_STATE_SPEAKER_INIT ;
 int WIIUSE_DEBUG (char*,...) ;
 int WM_CMD_SPEAKER_ENABLE ;
 int WM_CMD_SPEAKER_MUTE ;
 int WM_REG_SPEAKER_BLOCK ;
 int WM_REG_SPEAKER_REG1 ;
 int WM_REG_SPEAKER_REG2 ;
 int WM_REG_SPEAKER_REG3 ;
 int __wiiuse_speaker_defconf ;
 int __wiiuse_speaker_vol ;
 int memcpy (int*,int ,int) ;
 int wiiuse_sendcmd (struct wiimote_t*,int ,int*,int,int *) ;
 int wiiuse_status (struct wiimote_t*,int *) ;
 int wiiuse_write_data (struct wiimote_t*,int ,int*,int,int *) ;

void wiiuse_set_speaker(struct wiimote_t *wm,int status)
{
 ubyte conf[7];
 ubyte buf = 0x00;

 if(!wm) return;

 if(!WIIMOTE_IS_SET(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE)) {
  WIIUSE_DEBUG("Tried to enable speaker, will wait until handshake finishes.\n");
  if(status)
   WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_SPEAKER_INIT);
  else
   WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_SPEAKER_INIT);
  return;
 }

 if(status) {
  if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_SPEAKER)) {
   wiiuse_status(wm,((void*)0));
   return;
  }
 } else {
  if(!WIIMOTE_IS_SET(wm,WIIMOTE_STATE_SPEAKER)) {
   wiiuse_status(wm,((void*)0));
   return;
  }
 }

 buf = 0x04;
 wiiuse_sendcmd(wm,WM_CMD_SPEAKER_MUTE,&buf,1,((void*)0));

 if (!status) {
  WIIUSE_DEBUG("Disabled speaker for wiimote id %i.", wm->unid);

  buf = 0x01;
  wiiuse_write_data(wm,WM_REG_SPEAKER_REG1,&buf,1,((void*)0));

  buf = 0x00;
  wiiuse_write_data(wm,WM_REG_SPEAKER_REG3,&buf,1,((void*)0));

  buf = 0x00;
  wiiuse_sendcmd(wm,WM_CMD_SPEAKER_ENABLE,&buf,1,((void*)0));

  wiiuse_status(wm,((void*)0));
  return;
 }

 memcpy(conf,__wiiuse_speaker_defconf,7);

 buf = 0x04;
 wiiuse_sendcmd(wm,WM_CMD_SPEAKER_ENABLE,&buf,1,((void*)0));

 buf = 0x01;
 wiiuse_write_data(wm,WM_REG_SPEAKER_REG3,&buf,1,((void*)0));

 buf = 0x08;
 wiiuse_write_data(wm,WM_REG_SPEAKER_REG1,&buf,1,((void*)0));

 conf[2] = 0xd0;
 conf[3] = 0x07;
 conf[4] = __wiiuse_speaker_vol;
 wiiuse_write_data(wm,WM_REG_SPEAKER_BLOCK,conf,7,((void*)0));

 buf = 0x01;
 wiiuse_write_data(wm,WM_REG_SPEAKER_REG2,&buf,1,((void*)0));

 buf = 0x00;
 wiiuse_sendcmd(wm,WM_CMD_SPEAKER_MUTE,&buf,1,((void*)0));

 wiiuse_status(wm,((void*)0));
 return;
}
