
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; int data; } ;
typedef TYPE_1__ X_SERIAL ;
typedef size_t UINT ;
typedef scalar_t__ UCHAR ;


 int Copy (int ,scalar_t__*,size_t) ;
 TYPE_1__* Malloc (int) ;
 int ZeroMalloc (size_t) ;

X_SERIAL *NewXSerial(void *data, UINT size)
{
 X_SERIAL *serial;
 UCHAR *buf = (UCHAR *)data;
 UINT i;

 if (data == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < size;i++)
 {
  if (buf[i] != 0)
  {
   break;
  }
 }
 if (i == size)
 {
  i = size - 1;
 }
 buf += i;

 serial = Malloc(sizeof(X_SERIAL));
 serial->size = size - i;
 serial->data = ZeroMalloc(size + 16);
 Copy(serial->data, buf, size - i);

 return serial;
}
