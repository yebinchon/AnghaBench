
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int connected; } ;


 int USBKEYBOARD_DISCONNECTED ;
 TYPE_1__* _kbd ;
 int _submit (int ,int ) ;

__attribute__((used)) static s32 _disconnect(s32 retval, void *data)
{
 (void) data;

 _kbd->connected = 0;

 _submit(USBKEYBOARD_DISCONNECTED, 0);

 return 1;
}
