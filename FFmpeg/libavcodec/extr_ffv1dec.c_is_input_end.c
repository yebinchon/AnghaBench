
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ overread; } ;
struct TYPE_5__ {scalar_t__ ac; int gb; TYPE_1__ c; } ;
typedef TYPE_1__ RangeCoder ;
typedef TYPE_2__ FFV1Context ;


 scalar_t__ AC_GOLOMB_RICE ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ MAX_OVERREAD ;
 int get_bits_left (int *) ;

__attribute__((used)) static int is_input_end(FFV1Context *s)
{
    if (s->ac != AC_GOLOMB_RICE) {
        RangeCoder *const c = &s->c;
        if (c->overread > MAX_OVERREAD)
            return AVERROR_INVALIDDATA;
    } else {
        if (get_bits_left(&s->gb) < 1)
            return AVERROR_INVALIDDATA;
    }
    return 0;
}
