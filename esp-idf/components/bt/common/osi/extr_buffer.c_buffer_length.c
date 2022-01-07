
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; } ;
typedef TYPE_1__ buffer_t ;


 int assert (int ) ;

size_t buffer_length(const buffer_t *buf)
{
    assert(buf != ((void*)0));
    return buf->length;
}
