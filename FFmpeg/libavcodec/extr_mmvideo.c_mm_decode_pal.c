
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* palette; int gb; } ;
typedef TYPE_1__ MmContext ;


 int bytestream2_get_be24 (int *) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static void mm_decode_pal(MmContext *s)
{
    int i;

    bytestream2_skip(&s->gb, 4);
    for (i = 0; i < 128; i++) {
        s->palette[i] = 0xFFU << 24 | bytestream2_get_be24(&s->gb);
        s->palette[i+128] = s->palette[i]<<2;
    }
}
