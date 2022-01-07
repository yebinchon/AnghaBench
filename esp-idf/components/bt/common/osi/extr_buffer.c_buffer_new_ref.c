
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
typedef TYPE_1__ buffer_t ;


 int assert (int ) ;
 TYPE_1__* buffer_new_slice (TYPE_1__ const*,int ) ;

buffer_t *buffer_new_ref(const buffer_t *buf)
{
    assert(buf != ((void*)0));
    return buffer_new_slice(buf, buf->length);
}
