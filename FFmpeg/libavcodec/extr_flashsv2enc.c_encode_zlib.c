
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ sl_begin; scalar_t__ sl_end; } ;
typedef TYPE_1__ Block ;


 int Z_OK ;
 int compress2 (int *,unsigned long*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int encode_zlib(Block * b, uint8_t * buf, unsigned long *buf_size, int comp)
{
    int res = compress2(buf, buf_size, b->sl_begin, b->sl_end - b->sl_begin, comp);
    return res == Z_OK ? 0 : -1;
}
