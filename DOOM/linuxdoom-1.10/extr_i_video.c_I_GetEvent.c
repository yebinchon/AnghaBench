
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int data1; int data2; int data3; void* type; } ;
typedef TYPE_3__ event_t ;
struct TYPE_8__ {int state; int x; int y; } ;
struct TYPE_7__ {int state; int button; } ;
struct TYPE_10__ {int type; TYPE_2__ xmotion; TYPE_1__ xbutton; } ;


 int Button1 ;
 int Button1Mask ;
 int Button2 ;
 int Button2Mask ;
 int Button3 ;
 int Button3Mask ;



 int D_PostEvent (TYPE_3__*) ;




 int XNextEvent (int ,TYPE_4__*) ;
 int X_display ;
 TYPE_4__ X_event ;
 int X_height ;
 int X_shmeventtype ;
 int X_width ;
 int doShm ;
 void* ev_keydown ;
 void* ev_keyup ;
 void* ev_mouse ;
 int lastmousex ;
 int lastmousey ;
 int mousemoved ;
 int shmFinished ;
 void* xlatekey () ;

void I_GetEvent(void)
{

    event_t event;


    XNextEvent(X_display, &X_event);
    switch (X_event.type)
    {
      case 130:
 event.type = ev_keydown;
 event.data1 = xlatekey();
 D_PostEvent(&event);

 break;
      case 129:
 event.type = ev_keyup;
 event.data1 = xlatekey();
 D_PostEvent(&event);

 break;
      case 134:
 event.type = ev_mouse;
 event.data1 =
     (X_event.xbutton.state & Button1Mask)
     | (X_event.xbutton.state & Button2Mask ? 2 : 0)
     | (X_event.xbutton.state & Button3Mask ? 4 : 0)
     | (X_event.xbutton.button == Button1)
     | (X_event.xbutton.button == Button2 ? 2 : 0)
     | (X_event.xbutton.button == Button3 ? 4 : 0);
 event.data2 = event.data3 = 0;
 D_PostEvent(&event);

 break;
      case 133:
 event.type = ev_mouse;
 event.data1 =
     (X_event.xbutton.state & Button1Mask)
     | (X_event.xbutton.state & Button2Mask ? 2 : 0)
     | (X_event.xbutton.state & Button3Mask ? 4 : 0);

 event.data1 =
     event.data1
     ^ (X_event.xbutton.button == Button1 ? 1 : 0)
     ^ (X_event.xbutton.button == Button2 ? 2 : 0)
     ^ (X_event.xbutton.button == Button3 ? 4 : 0);
 event.data2 = event.data3 = 0;
 D_PostEvent(&event);

 break;
      case 128:
 event.type = ev_mouse;
 event.data1 =
     (X_event.xmotion.state & Button1Mask)
     | (X_event.xmotion.state & Button2Mask ? 2 : 0)
     | (X_event.xmotion.state & Button3Mask ? 4 : 0);
 event.data2 = (X_event.xmotion.x - lastmousex) << 2;
 event.data3 = (lastmousey - X_event.xmotion.y) << 2;

 if (event.data2 || event.data3)
 {
     lastmousex = X_event.xmotion.x;
     lastmousey = X_event.xmotion.y;
     if (X_event.xmotion.x != X_width/2 &&
  X_event.xmotion.y != X_height/2)
     {
  D_PostEvent(&event);

  mousemoved = 0;
     } else
     {
  mousemoved = 1;
     }
 }
 break;

      case 131:
      case 132:
 break;

      default:
 if (doShm && X_event.type == X_shmeventtype) shmFinished = 1;
 break;
    }

}
