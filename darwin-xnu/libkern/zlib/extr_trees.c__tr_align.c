
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {long compressed_len; int last_eob_len; int bi_valid; } ;
typedef TYPE_1__ deflate_state ;


 int END_BLOCK ;
 int STATIC_TREES ;
 int bi_flush (TYPE_1__*) ;
 int send_bits (TYPE_1__*,int,int) ;
 int send_code (TYPE_1__*,int ,int ) ;
 int static_ltree ;

void
_tr_align(deflate_state *s)
{
    send_bits(s, STATIC_TREES<<1, 3);
    send_code(s, END_BLOCK, static_ltree);



    bi_flush(s);





    if (1 + s->last_eob_len + 10 - s->bi_valid < 9) {
        send_bits(s, STATIC_TREES<<1, 3);
        send_code(s, END_BLOCK, static_ltree);



        bi_flush(s);
    }
    s->last_eob_len = 7;
}
