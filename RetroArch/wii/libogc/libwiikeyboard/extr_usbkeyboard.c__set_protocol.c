
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
struct TYPE_2__ {int fd; int interface; } ;


 int USB_REQTYPE_INTERFACE_SET ;
 int USB_REQ_SETPROTOCOL ;
 int USB_WriteCtrlMsg (int,int ,int ,int ,int ,int ,int *) ;
 TYPE_1__* _kbd ;

__attribute__((used)) static s32 _set_protocol(u8 protocol)
{
 if(!_kbd || _kbd->fd==-1) return -1;
 return USB_WriteCtrlMsg(_kbd->fd, USB_REQTYPE_INTERFACE_SET, USB_REQ_SETPROTOCOL, protocol, _kbd->interface, 0, ((void*)0));
}
