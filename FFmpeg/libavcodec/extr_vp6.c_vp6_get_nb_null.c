
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ VP56Context ;


 int get_bits (int *,int) ;
 int get_bits1 (int *) ;

__attribute__((used)) static unsigned vp6_get_nb_null(VP56Context *s)
{
    unsigned val = get_bits(&s->gb, 2);
    if (val == 2)
        val += get_bits(&s->gb, 2);
    else if (val == 3) {
        val = get_bits1(&s->gb) << 2;
        val = 6+val + get_bits(&s->gb, 2+val);
    }
    return val;
}
