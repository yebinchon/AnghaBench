
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int get_bits1 (int *) ;

__attribute__((used)) static inline int get_dmv(MpegEncContext *s)
{
    if (get_bits1(&s->gb))
        return 1 - (get_bits1(&s->gb) << 1);
    else
        return 0;
}
