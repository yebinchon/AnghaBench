
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; void* data; } ;
typedef TYPE_1__ X_SERIAL ;


 int Copy (void*,void*,int) ;
 void* ZeroMalloc (int) ;

X_SERIAL *CloneXSerial(X_SERIAL *src)
{
 X_SERIAL *s;

 if (src == ((void*)0))
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(X_SERIAL));
 s->data = ZeroMalloc(src->size);
 Copy(s->data, src->data, src->size);
 s->size = src->size;

 return s;
}
