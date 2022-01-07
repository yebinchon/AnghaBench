
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int x; int y; } ;
struct TYPE_7__ {int x; int y; int button; } ;
struct TYPE_9__ {int type; TYPE_2__ xmotion; TYPE_1__ xbutton; int xkey; } ;
typedef TYPE_3__ XEvent ;
struct TYPE_10__ {int (* pXLookupKeysym ) (int *,int ) ;int display; int (* pXCheckTypedEvent ) (int ,int const,TYPE_3__*) ;int (* pXNextEvent ) (int ,TYPE_3__*) ;scalar_t__ (* pXPending ) (int ) ;} ;
 TYPE_6__ g_xstuff ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ,TYPE_3__*) ;
 int stub3 (int ,int const,TYPE_3__*) ;
 int stub4 (int *,int ) ;
 int stub5 (int *,int ) ;

__attribute__((used)) static void x11h_update(int (*key_cb)(void *cb_arg, int kc, int is_pressed),
   int (*mouseb_cb)(void *cb_arg, int x, int y, int button, int is_pressed),
   int (*mousem_cb)(void *cb_arg, int x, int y),
   void *cb_arg)
{
 XEvent evt;
 int keysym;

 while (g_xstuff.pXPending(g_xstuff.display))
 {
  g_xstuff.pXNextEvent(g_xstuff.display, &evt);
  switch (evt.type)
  {
  case 131:
   while (g_xstuff.pXCheckTypedEvent(g_xstuff.display, 131, &evt))
    ;
   break;

  case 130:
   keysym = g_xstuff.pXLookupKeysym(&evt.xkey, 0);
   if (key_cb != ((void*)0))
    key_cb(cb_arg, keysym, 1);
   break;

  case 129:
   keysym = g_xstuff.pXLookupKeysym(&evt.xkey, 0);
   if (key_cb != ((void*)0))
    key_cb(cb_arg, keysym, 0);
   break;

  case 133:
   if (mouseb_cb != ((void*)0))
    mouseb_cb(cb_arg, evt.xbutton.x, evt.xbutton.y,
       evt.xbutton.button, 1);
   break;

  case 132:
   if (mouseb_cb != ((void*)0))
    mouseb_cb(cb_arg, evt.xbutton.x, evt.xbutton.y,
       evt.xbutton.button, 0);
   break;

  case 128:
   if (mousem_cb != ((void*)0))
    mousem_cb(cb_arg, evt.xmotion.x, evt.xmotion.y);
   break;
  }
 }
}
