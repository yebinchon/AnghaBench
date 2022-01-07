
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uword ;
typedef int ubyte ;
struct TYPE_2__ {int classic; int nunchuk; } ;
struct wiimote_t {int expansion_state; TYPE_1__ exp; } ;


 int BIG_ENDIAN_LONG (int) ;
 int EXP_HANDSHAKE_LEN ;
 int WIIMOTE_DISABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_ENABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_EXP_HANDSHAKE ;
 int WM_EXP_MEM_CALIBR ;
 int WM_EXP_MEM_ENABLE1 ;
 int WM_EXP_MEM_ENABLE2 ;
 int* __lwp_wkspace_allocate (int) ;
 int __lwp_wkspace_free (int*) ;
 int classic_ctrl_handshake (struct wiimote_t*,int *,int*,int ) ;
 int nunchuk_handshake (struct wiimote_t*,int *,int*,int ) ;
 int wiiuse_read_data (struct wiimote_t*,int*,int ,int,void (*) (struct wiimote_t*,int*,int )) ;
 int wiiuse_set_ir_mode (struct wiimote_t*) ;
 int wiiuse_status (struct wiimote_t*,int *) ;
 int wiiuse_write_data (struct wiimote_t*,int ,int*,int,void (*) (struct wiimote_t*,int*,int )) ;

void wiiuse_handshake_expansion(struct wiimote_t *wm,ubyte *data,uword len)
{
 int id;
 ubyte val;
 ubyte *buf = ((void*)0);

 switch(wm->expansion_state) {

  case 0:
   wm->expansion_state = 1;
   val = 0x55;
   wiiuse_write_data(wm,WM_EXP_MEM_ENABLE1,&val,1,wiiuse_handshake_expansion);
   break;
  case 1:
   wm->expansion_state = 2;
   val = 0x00;
   wiiuse_write_data(wm,WM_EXP_MEM_ENABLE2,&val,1,wiiuse_handshake_expansion);
   break;
  case 2:
   wm->expansion_state = 3;
   buf = __lwp_wkspace_allocate(sizeof(ubyte)*EXP_HANDSHAKE_LEN);
   wiiuse_read_data(wm,buf,WM_EXP_MEM_CALIBR,EXP_HANDSHAKE_LEN,wiiuse_handshake_expansion);
   break;
  case 3:
   if(!data || !len) return;
   id = BIG_ENDIAN_LONG(*(int*)(&data[220]));

   switch(id) {
    case 128:
     if(!nunchuk_handshake(wm,&wm->exp.nunchuk,data,len)) return;
     break;
    case 138:
    case 132:
    case 131:
    case 130:
    case 137:
    case 136:
    case 135:
    case 134:
    case 133:
    case 129:
     if(!classic_ctrl_handshake(wm,&wm->exp.classic,data,len)) return;
     break;
    default:
     if(!classic_ctrl_handshake(wm,&wm->exp.classic,data,len)) return;





   }
   __lwp_wkspace_free(data);

   WIIMOTE_DISABLE_STATE(wm,WIIMOTE_STATE_EXP_HANDSHAKE);
   WIIMOTE_ENABLE_STATE(wm,WIIMOTE_STATE_EXP);
   wiiuse_set_ir_mode(wm);
   wiiuse_status(wm,((void*)0));
   break;
 }
}
