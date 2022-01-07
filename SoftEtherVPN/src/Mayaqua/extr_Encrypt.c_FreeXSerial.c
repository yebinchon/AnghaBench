
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; } ;
typedef TYPE_1__ X_SERIAL ;


 int Free (TYPE_1__*) ;

void FreeXSerial(X_SERIAL *serial)
{

 if (serial == ((void*)0))
 {
  return;
 }

 Free(serial->data);
 Free(serial);
}
