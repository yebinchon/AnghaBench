#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* style_start; scalar_t__ style_flag; void* style_end; } ;
struct TYPE_6__ {scalar_t__ style_flag; } ;
struct TYPE_5__ {int box_flags; int count; int /*<<< orphan*/  text_pos; TYPE_4__* style_attributes_temp; TYPE_3__** style_attributes; int /*<<< orphan*/  buffer; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ MovTextContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ STYLE_FLAG_BOLD ; 
 scalar_t__ STYLE_FLAG_ITALIC ; 
 scalar_t__ STYLE_FLAG_UNDERLINE ; 
 int STYL_BOX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__***,int*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(void *priv, const char style, int close)
{
    MovTextContext *s = priv;
    if (!close) {
        if (!(s->box_flags & STYL_BOX)) {   //first style entry

            s->style_attributes_temp = FUNC4(sizeof(*s->style_attributes_temp));

            if (!s->style_attributes_temp) {
                FUNC1(&s->buffer);
                s->box_flags &= ~STYL_BOX;
                return;
            }

            s->style_attributes_temp->style_flag = 0;
            s->style_attributes_temp->style_start = FUNC0(&s->text_pos);
        } else {
            if (s->style_attributes_temp->style_flag) { //break the style record here and start a new one
                s->style_attributes_temp->style_end = FUNC0(&s->text_pos);
                FUNC2(&s->style_attributes, &s->count, s->style_attributes_temp);
                s->style_attributes_temp = FUNC4(sizeof(*s->style_attributes_temp));
                if (!s->style_attributes_temp) {
                    FUNC5(s);
                    FUNC1(&s->buffer);
                    s->box_flags &= ~STYL_BOX;
                    return;
                }

                s->style_attributes_temp->style_flag = s->style_attributes[s->count - 1]->style_flag;
                s->style_attributes_temp->style_start = FUNC0(&s->text_pos);
            } else {
                s->style_attributes_temp->style_flag = 0;
                s->style_attributes_temp->style_start = FUNC0(&s->text_pos);
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
        FUNC3(s->avctx, AV_LOG_WARNING, "Ignoring unmatched close tag\n");
        return;
    } else {
        s->style_attributes_temp->style_end = FUNC0(&s->text_pos);
        FUNC2(&s->style_attributes, &s->count, s->style_attributes_temp);

        s->style_attributes_temp = FUNC4(sizeof(*s->style_attributes_temp));

        if (!s->style_attributes_temp) {
            FUNC5(s);
            FUNC1(&s->buffer);
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
        if (s->style_attributes_temp->style_flag) { //start of new style record
            s->style_attributes_temp->style_start = FUNC0(&s->text_pos);
        }
    }
    s->box_flags |= STYL_BOX;
}