
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int word_bits; int * input; scalar_t__ key_present; } ;
typedef TYPE_1__ DBEContext ;


 int AV_RB24 (int *) ;
 int skip_input (TYPE_1__*,int) ;

__attribute__((used)) static int parse_key(DBEContext *s)
{
    if (s->key_present) {
        uint8_t *key = s->input;
        int ret = skip_input(s, 1);
        if (ret < 0)
            return ret;
        return AV_RB24(key) >> 24 - s->word_bits;
    }
    return 0;
}
