
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int pos; } ;
typedef TYPE_1__ bitbuf_t ;



__attribute__((used)) static inline void bits_clone( bitbuf_t *dst, bitbuf_t *src, int bufsize )
{
    *dst = *src;
    dst->size = (dst->pos >> 3) + bufsize;
}
