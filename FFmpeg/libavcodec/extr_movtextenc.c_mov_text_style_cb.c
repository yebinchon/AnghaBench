
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* style_start; scalar_t__ style_flag; void* style_end; } ;
struct TYPE_6__ {scalar_t__ style_flag; } ;
struct TYPE_5__ {int box_flags; int count; int text_pos; TYPE_4__* style_attributes_temp; TYPE_3__** style_attributes; int buffer; int avctx; } ;
typedef TYPE_1__ MovTextContext ;


 int AV_LOG_WARNING ;
 void* AV_RB16 (int *) ;
 scalar_t__ STYLE_FLAG_BOLD ;
 scalar_t__ STYLE_FLAG_ITALIC ;
 scalar_t__ STYLE_FLAG_UNDERLINE ;
 int STYL_BOX ;
 int av_bprint_clear (int *) ;
 int av_dynarray_add (TYPE_3__***,int*,TYPE_4__*) ;
 int av_log (int ,int ,char*) ;
 void* av_malloc (int) ;
 int mov_text_cleanup (TYPE_1__*) ;

__attribute__((used)) static void mov_text_style_cb(void *priv, const char style, int close)
{
    MovTextContext *s = priv;
    if (!close) {
        if (!(s->box_flags & STYL_BOX)) {

            s->style_attributes_temp = av_malloc(sizeof(*s->style_attributes_temp));

            if (!s->style_attributes_temp) {
                av_bprint_clear(&s->buffer);
                s->box_flags &= ~STYL_BOX;
                return;
            }

            s->style_attributes_temp->style_flag = 0;
            s->style_attributes_temp->style_start = AV_RB16(&s->text_pos);
        } else {
            if (s->style_attributes_temp->style_flag) {
                s->style_attributes_temp->style_end = AV_RB16(&s->text_pos);
                av_dynarray_add(&s->style_attributes, &s->count, s->style_attributes_temp);
                s->style_attributes_temp = av_malloc(sizeof(*s->style_attributes_temp));
                if (!s->style_attributes_temp) {
                    mov_text_cleanup(s);
                    av_bprint_clear(&s->buffer);
                    s->box_flags &= ~STYL_BOX;
                    return;
                }

                s->style_attributes_temp->style_flag = s->style_attributes[s->count - 1]->style_flag;
                s->style_attributes_temp->style_start = AV_RB16(&s->text_pos);
            } else {
                s->style_attributes_temp->style_flag = 0;
                s->style_attributes_temp->style_start = AV_RB16(&s->text_pos);
            }
        }
        switch (style){
        case 'b':
            s->style_attributes_temp->style_flag |= STYLE_FLAG_BOLD;
            break;
        case 'i':
            s->style_attributes_temp->style_flag |= STYLE_FLAG_ITALIC;
            break;
        case 'u':
            s->style_attributes_temp->style_flag |= STYLE_FLAG_UNDERLINE;
            break;
        }
    } else if (!s->style_attributes_temp) {
        av_log(s->avctx, AV_LOG_WARNING, "Ignoring unmatched close tag\n");
        return;
    } else {
        s->style_attributes_temp->style_end = AV_RB16(&s->text_pos);
        av_dynarray_add(&s->style_attributes, &s->count, s->style_attributes_temp);

        s->style_attributes_temp = av_malloc(sizeof(*s->style_attributes_temp));

        if (!s->style_attributes_temp) {
            mov_text_cleanup(s);
            av_bprint_clear(&s->buffer);
            s->box_flags &= ~STYL_BOX;
            return;
        }

        s->style_attributes_temp->style_flag = s->style_attributes[s->count - 1]->style_flag;
        switch (style){
        case 'b':
            s->style_attributes_temp->style_flag &= ~STYLE_FLAG_BOLD;
            break;
        case 'i':
            s->style_attributes_temp->style_flag &= ~STYLE_FLAG_ITALIC;
            break;
        case 'u':
            s->style_attributes_temp->style_flag &= ~STYLE_FLAG_UNDERLINE;
            break;
        }
        if (s->style_attributes_temp->style_flag) {
            s->style_attributes_temp->style_start = AV_RB16(&s->text_pos);
        }
    }
    s->box_flags |= STYL_BOX;
}
