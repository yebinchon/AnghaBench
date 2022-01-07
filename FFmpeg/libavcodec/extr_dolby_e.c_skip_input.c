
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int input_size; int input; int word_bytes; int avctx; } ;
typedef TYPE_1__ DBEContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static int skip_input(DBEContext *s, int nb_words)
{
    if (nb_words > s->input_size) {
        av_log(s->avctx, AV_LOG_ERROR, "Packet too short\n");
        return AVERROR_INVALIDDATA;
    }

    s->input += nb_words * s->word_bytes;
    s->input_size -= nb_words;
    return 0;
}
