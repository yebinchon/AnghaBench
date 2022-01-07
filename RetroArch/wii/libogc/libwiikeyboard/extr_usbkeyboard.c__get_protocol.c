
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
struct TYPE_2__ {int fd; int interface; } ;


 int USB_REQTYPE_INTERFACE_GET ;
 int USB_REQ_GETPROTOCOL ;
 int USB_WriteCtrlMsg (int,int ,int ,int ,int ,int,int*) ;
 TYPE_1__* _kbd ;
 int hId ;
 int* iosAlloc (int ,int) ;
 int iosFree (int ,int*) ;

__attribute__((used)) static s32 _get_protocol(void)
{
 s32 protocol;
 u8 *buffer = 0;

 if(!_kbd || _kbd->fd==-1) return -1;

 buffer = iosAlloc(hId, 1);

 if (buffer == ((void*)0))
  return -1;

 USB_WriteCtrlMsg(_kbd->fd, USB_REQTYPE_INTERFACE_GET, USB_REQ_GETPROTOCOL, 0, _kbd->interface, 1, buffer);

 protocol = *buffer;
 iosFree(hId, buffer);

 return protocol;
}
