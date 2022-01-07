
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* buf; int size; int val; scalar_t__ pos; } ;
typedef TYPE_1__ bitbuf_t ;


 int memset (int*,int ,int) ;

__attribute__((used)) static inline void bits_init(bitbuf_t *bb, uint8_t* buf, int bufsize, int clear)
{
    bb->pos = 0;
    bb->buf = buf;
    bb->size = bufsize;
    bb->val = (bb->buf[0] << 24) | (bb->buf[1] << 16) |
              (bb->buf[2] << 8) | bb->buf[3];
    if (clear)
        memset(bb->buf, 0, bufsize);
    bb->size = bufsize;
}
