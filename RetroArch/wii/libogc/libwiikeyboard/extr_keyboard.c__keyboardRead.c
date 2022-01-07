
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _reent {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {size_t head; size_t tail; char* buf; } ;


 TYPE_1__ _keyBuffer ;
 int _readKey_cb (char) ;

__attribute__((used)) static ssize_t _keyboardRead(struct _reent *r, void *unused, char *ptr, size_t len)
{
 ssize_t count = len;
 while ( count > 0 ) {
  if (_keyBuffer.head != _keyBuffer.tail) {
   char key = _keyBuffer.buf[_keyBuffer.head];
   *ptr++ = key;
   if (_readKey_cb != ((void*)0)) _readKey_cb(key);
   _keyBuffer.head++;
   count--;
  }
 }
 return len;
}
