
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int * data; } ;
typedef TYPE_1__ ucvector ;


 int lodepng_set32bitInt (int *,unsigned int) ;
 int ucvector_resize (TYPE_1__*,int) ;

__attribute__((used)) static void lodepng_add32bitInt(ucvector* buffer, unsigned value)
{
  ucvector_resize(buffer, buffer->size + 4);
  lodepng_set32bitInt(&buffer->data[buffer->size - 4], value);
}
