
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
struct TYPE_3__ {int modifiers; } ;
struct TYPE_4__ {int fd; TYPE_1__ sc_ndata; int ep; } ;


 int USB_ReadIntrMsg (int,int ,int,int *) ;
 TYPE_2__* _kbd ;
 int hId ;
 int * iosAlloc (int ,int) ;
 int iosFree (int ,int *) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static s32 _get_input_report(void)
{
 u8 *buffer = 0;

 if(!_kbd || _kbd->fd==-1) return -1;
 buffer = iosAlloc(hId, 8);

 if (buffer == ((void*)0))
  return -1;

 s32 ret = USB_ReadIntrMsg(_kbd->fd, _kbd->ep, 8, buffer);

 memcpy(&_kbd->sc_ndata, buffer, 8);
 iosFree(hId, buffer);

 _kbd->sc_ndata.modifiers = (_kbd->sc_ndata.modifiers << 8) | (_kbd->sc_ndata.modifiers >> 8);

 return ret;
}
