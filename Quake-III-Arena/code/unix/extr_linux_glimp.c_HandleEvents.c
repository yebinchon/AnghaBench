
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int qboolean ;
struct TYPE_14__ {int y; int x; } ;
struct TYPE_13__ {int y; int x; } ;
struct TYPE_16__ {int button; } ;
struct TYPE_12__ {int time; } ;
struct TYPE_15__ {int x_root; int y_root; int x; int y; } ;
struct TYPE_17__ {int type; TYPE_2__ xconfigure; TYPE_1__ xcreatewindow; TYPE_4__ xbutton; TYPE_11__ xkey; TYPE_3__ xmotion; } ;
typedef TYPE_5__ XEvent ;
struct TYPE_20__ {int keyCatchers; } ;
struct TYPE_19__ {int vidWidth; int vidHeight; } ;
struct TYPE_18__ {int value; } ;






 int K_MOUSE1 ;
 int K_MWHEELDOWN ;
 int K_MWHEELUP ;


 int MOUSE_RESET_DELAY ;

 int None ;
 int SE_CHAR ;
 int SE_KEY ;
 int SE_MOUSE ;
 int Sys_QueEvent (int,int ,int,int,int ,int *) ;
 int Sys_XTimeToSysTime (int ) ;
 char* XLateKey (TYPE_11__*,int*) ;
 int XNextEvent (int ,TYPE_5__*) ;
 scalar_t__ XPending (int ) ;
 int XWarpPointer (int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int abs (int) ;
 TYPE_9__ cls ;
 int dpy ;
 TYPE_8__ glConfig ;
 TYPE_7__* in_dgamouse ;
 int mouseResetTime ;
 int mouse_active ;
 int mwx ;
 int mwy ;
 int mx ;
 int my ;
 int qfalse ;
 int qtrue ;
 int repeated_press (TYPE_5__*) ;
 int win ;
 int win_x ;
 int win_y ;

__attribute__((used)) static void HandleEvents(void)
{
  int b;
  int key;
  XEvent event;
  qboolean dowarp = qfalse;
  char *p;
  int dx, dy;
  int t = 0;

  if (!dpy)
    return;

  while (XPending(dpy))
  {
    XNextEvent(dpy, &event);
    switch (event.type)
    {
    case 130:
   t = Sys_XTimeToSysTime(event.xkey.time);
      p = XLateKey(&event.xkey, &key);
      if (key)
      {
        Sys_QueEvent( t, SE_KEY, key, qtrue, 0, ((void*)0) );
      }
      if (p)
      {
        while (*p)
        {
          Sys_QueEvent( t, SE_CHAR, *p++, 0, 0, ((void*)0) );
        }
      }
      break;

    case 129:
   t = Sys_XTimeToSysTime(event.xkey.time);




      if (cls.keyCatchers == 0)
      {
        if (repeated_press(&event) == qtrue)
          continue;
      }
      XLateKey(&event.xkey, &key);

      Sys_QueEvent( t, SE_KEY, key, qfalse, 0, ((void*)0) );
      break;

    case 128:
   t = Sys_XTimeToSysTime(event.xkey.time);
      if (mouse_active)
      {
        if (in_dgamouse->value)
        {
          if (abs(event.xmotion.x_root) > 1)
            mx += event.xmotion.x_root * 2;
          else
            mx += event.xmotion.x_root;
          if (abs(event.xmotion.y_root) > 1)
            my += event.xmotion.y_root * 2;
          else
            my += event.xmotion.y_root;
          if (t - mouseResetTime > MOUSE_RESET_DELAY )
          {
            Sys_QueEvent( t, SE_MOUSE, mx, my, 0, ((void*)0) );
          }
          mx = my = 0;
        } else
        {

          if (event.xmotion.x == glConfig.vidWidth/2 &&
              event.xmotion.y == glConfig.vidHeight/2)
          {
            mwx = glConfig.vidWidth/2;
            mwy = glConfig.vidHeight/2;
            if (t - mouseResetTime > MOUSE_RESET_DELAY )
            {
              Sys_QueEvent( t, SE_MOUSE, mx, my, 0, ((void*)0) );
            }
            mx = my = 0;
            break;
          }

          dx = ((int)event.xmotion.x - mwx);
          dy = ((int)event.xmotion.y - mwy);
          if (abs(dx) > 1)
            mx += dx * 2;
          else
            mx += dx;
          if (abs(dy) > 1)
            my += dy * 2;
          else
            my += dy;

          mwx = event.xmotion.x;
          mwy = event.xmotion.y;
          dowarp = qtrue;
        }
      }
      break;

    case 134:
    t = Sys_XTimeToSysTime(event.xkey.time);
      if (event.xbutton.button == 4)
      {
        Sys_QueEvent( t, SE_KEY, K_MWHEELUP, qtrue, 0, ((void*)0) );
      } else if (event.xbutton.button == 5)
      {
        Sys_QueEvent( t, SE_KEY, K_MWHEELDOWN, qtrue, 0, ((void*)0) );
      } else
      {

        b=-1;
        if (event.xbutton.button == 1)
        {
          b = 0;
        } else if (event.xbutton.button == 2)
        {
          b = 2;
        } else if (event.xbutton.button == 3)
        {
          b = 1;
        } else if (event.xbutton.button == 6)
        {
          b = 3;
        } else if (event.xbutton.button == 7)
        {
          b = 4;
        };

        Sys_QueEvent( t, SE_KEY, K_MOUSE1 + b, qtrue, 0, ((void*)0) );
      }
      break;

    case 133:
    t = Sys_XTimeToSysTime(event.xkey.time);
      if (event.xbutton.button == 4)
      {
        Sys_QueEvent( t, SE_KEY, K_MWHEELUP, qfalse, 0, ((void*)0) );
      } else if (event.xbutton.button == 5)
      {
        Sys_QueEvent( t, SE_KEY, K_MWHEELDOWN, qfalse, 0, ((void*)0) );
      } else
      {
        b=-1;
        if (event.xbutton.button == 1)
        {
          b = 0;
        } else if (event.xbutton.button == 2)
        {
          b = 2;
        } else if (event.xbutton.button == 3)
        {
          b = 1;
        } else if (event.xbutton.button == 6)
        {
          b = 3;
        } else if (event.xbutton.button == 7)
        {
          b = 4;
        };
        Sys_QueEvent( t, SE_KEY, K_MOUSE1 + b, qfalse, 0, ((void*)0) );
      }
      break;

    case 131 :
      win_x = event.xcreatewindow.x;
      win_y = event.xcreatewindow.y;
      break;

    case 132 :
      win_x = event.xconfigure.x;
      win_y = event.xconfigure.y;
      break;
    }
  }

  if (dowarp)
  {
    XWarpPointer(dpy,None,win,0,0,0,0,
                 (glConfig.vidWidth/2),(glConfig.vidHeight/2));
  }
}
