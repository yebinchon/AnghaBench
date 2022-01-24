#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int input_size; int word_bits; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; int /*<<< orphan*/ * input; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ DBEContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC10(DBEContext *s, int nb_words, int key)
{
    uint8_t *src = s->input;
    uint8_t *dst = s->buffer;
    PutBitContext pb;
    int i;

    FUNC4(nb_words <= 1024u);

    if (nb_words > s->input_size) {
        FUNC5(s->avctx, AV_LOG_ERROR, "Packet too short\n");
        return AVERROR_INVALIDDATA;
    }

    switch (s->word_bits) {
    case 16:
        for (i = 0; i < nb_words; i++, src += 2, dst += 2)
            FUNC2(dst, FUNC0(src) ^ key);
        break;
    case 20:
        FUNC8(&pb, s->buffer, sizeof(s->buffer));
        for (i = 0; i < nb_words; i++, src += 3)
            FUNC9(&pb, 20, FUNC1(src) >> 4 ^ key);
        FUNC6(&pb);
        break;
    case 24:
        for (i = 0; i < nb_words; i++, src += 3, dst += 3)
            FUNC3(dst, FUNC1(src) ^ key);
        break;
    default:
        FUNC4(0);
    }

    return FUNC7(&s->gb, s->buffer, nb_words * s->word_bits);
}