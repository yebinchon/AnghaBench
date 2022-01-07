
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int USBKeyboard_eventType ;
struct TYPE_4__ {int keyCode; int type; } ;
typedef TYPE_1__ USBKeyboard_event ;
struct TYPE_5__ {int (* cb ) (TYPE_1__) ;} ;


 TYPE_3__* _kbd ;
 int stub1 (TYPE_1__) ;

__attribute__((used)) static void _submit(USBKeyboard_eventType type, u8 code)
{
 if (!_kbd->cb)
  return;

 USBKeyboard_event ev;
 ev.type = type;
 ev.keyCode = code;

 _kbd->cb(ev);
}
