
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int pos; } ;
typedef TYPE_1__ bitbuf_t ;



__attribute__((used)) static inline int bits_bytes_left(bitbuf_t *bb)
{
    return bb->size - (bb->pos >> 3);
}
