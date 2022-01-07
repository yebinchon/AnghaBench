
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ubyte ;
struct TYPE_3__ {int x; int y; int z; } ;
struct wiimote_t {int* event_buf; int event; int gforce; TYPE_1__ accel; int accel_calib; int orient; } ;


 int WIIMOTE_IS_FLAG_SET (struct wiimote_t*,int ) ;
 int WIIUSE_EVENT ;
 int WIIUSE_SMOOTHING ;
 int WIIUSE_WARNING (char*,int) ;
 int calculate_basic_ir (struct wiimote_t*,int*) ;
 int calculate_extended_ir (struct wiimote_t*,int*) ;
 int calculate_gforce (int *,TYPE_1__*,int *) ;
 int calculate_orientation (int *,TYPE_1__*,int *,int ) ;
 int event_ack (struct wiimote_t*,int*) ;
 int event_data_read (struct wiimote_t*,int*) ;
 int event_status (struct wiimote_t*,int*) ;
 int handle_expansion (struct wiimote_t*,int*) ;
 int wiiuse_pressed_buttons (struct wiimote_t*,int*) ;

void parse_event(struct wiimote_t *wm)
{
 ubyte event;
 ubyte *msg;

 event = wm->event_buf[0];
 msg = wm->event_buf+1;

 switch(event) {
  case 129:
   event_status(wm,msg);
   return;
  case 128:
   event_data_read(wm,msg);
   return;
  case 137:
   event_ack(wm,msg);
   return;
  case 136:
   wiiuse_pressed_buttons(wm,msg);
   break;
  case 135:
   wiiuse_pressed_buttons(wm,msg);

   wm->accel.x = (msg[2]<<2)|((msg[0]>>5)&3);
   wm->accel.y = (msg[3]<<2)|((msg[1]>>4)&2);
   wm->accel.z = (msg[4]<<2)|((msg[1]>>5)&2);


   calculate_orientation(&wm->accel_calib, &wm->accel, &wm->orient, WIIMOTE_IS_FLAG_SET(wm, WIIUSE_SMOOTHING));


   calculate_gforce(&wm->accel_calib, &wm->accel, &wm->gforce);

   break;
  case 133:
   wiiuse_pressed_buttons(wm,msg);

   wm->accel.x = (msg[2]<<2)|((msg[0]>>5)&3);
   wm->accel.y = (msg[3]<<2)|((msg[1]>>4)&2);
   wm->accel.z = (msg[4]<<2)|((msg[1]>>5)&2);


   calculate_orientation(&wm->accel_calib, &wm->accel, &wm->orient, WIIMOTE_IS_FLAG_SET(wm, WIIUSE_SMOOTHING));


   calculate_gforce(&wm->accel_calib, &wm->accel, &wm->gforce);

   calculate_extended_ir(wm, msg+5);
   break;
  case 131:
   wiiuse_pressed_buttons(wm,msg);
   handle_expansion(wm,msg+2);
   break;
  case 134:

   wiiuse_pressed_buttons(wm, msg);

   wm->accel.x = (msg[2]<<2)|((msg[0]>>5)&3);
   wm->accel.y = (msg[3]<<2)|((msg[1]>>4)&2);
   wm->accel.z = (msg[4]<<2)|((msg[1]>>5)&2);

   calculate_orientation(&wm->accel_calib, &wm->accel, &wm->orient, WIIMOTE_IS_FLAG_SET(wm, WIIUSE_SMOOTHING));
   calculate_gforce(&wm->accel_calib, &wm->accel, &wm->gforce);

   handle_expansion(wm, msg+5);
   break;
  case 130:
   wiiuse_pressed_buttons(wm,msg);
   calculate_basic_ir(wm, msg+2);
   handle_expansion(wm,msg+12);
   break;
  case 132:

   wiiuse_pressed_buttons(wm, msg);

   wm->accel.x = (msg[2]<<2)|((msg[0]>>5)&3);
   wm->accel.y = (msg[3]<<2)|((msg[1]>>4)&2);
   wm->accel.z = (msg[4]<<2)|((msg[1]>>5)&2);

   calculate_orientation(&wm->accel_calib, &wm->accel, &wm->orient, WIIMOTE_IS_FLAG_SET(wm, WIIUSE_SMOOTHING));
   calculate_gforce(&wm->accel_calib, &wm->accel, &wm->gforce);


   calculate_basic_ir(wm, msg+5);

   handle_expansion(wm, msg+15);
   break;
  default:
   WIIUSE_WARNING("Unknown event, can not handle it [Code 0x%x].", event);
   return;
 }


 wm->event = WIIUSE_EVENT;
}
