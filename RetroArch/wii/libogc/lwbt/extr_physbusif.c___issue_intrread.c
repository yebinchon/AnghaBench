
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct usbtxbuf {void* rpData; int txsize; } ;
typedef int s32 ;
struct TYPE_5__ {int openstate; int hci_evt; int fd; } ;
struct TYPE_4__ {scalar_t__ size; } ;


 int IPC_ENOMEM ;
 int IPC_OK ;
 int ROUNDDOWN32 (scalar_t__) ;
 scalar_t__ ROUNDUP32 (int *) ;
 int USB_ReadIntrMsgAsync (int ,int ,int ,void*,int ,struct usbtxbuf*) ;
 int __readintrdataCB ;
 TYPE_3__ __usbdev ;
 scalar_t__ btmemb_alloc (TYPE_1__*) ;
 TYPE_1__ ctrlbufs ;

__attribute__((used)) static s32 __issue_intrread()
{
 s32 ret;
 u32 len;
 u8 *ptr;
 struct usbtxbuf *buf;

 if(__usbdev.openstate!=0x0002) return IPC_OK;

 buf = (struct usbtxbuf*)btmemb_alloc(&ctrlbufs);
 if(buf!=((void*)0)) {
  ptr = (u8*)((u32)buf + sizeof(struct usbtxbuf));
  buf->rpData = (void*)ROUNDUP32(ptr);
  len = (ctrlbufs.size - ((u32)buf->rpData - (u32)buf));
  buf->txsize = ROUNDDOWN32(len);
  ret = USB_ReadIntrMsgAsync(__usbdev.fd,__usbdev.hci_evt,buf->txsize,buf->rpData,__readintrdataCB,buf);
 } else
  ret = IPC_ENOMEM;

 return ret;
}
