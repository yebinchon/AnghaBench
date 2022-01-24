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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int nb_symbols; int* simple_symbols; int simple; int /*<<< orphan*/  vlc; } ;
typedef  TYPE_1__ HuffReader ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int MAX_HUFFMAN_CODE_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int*,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(HuffReader *r, int *code_lengths,
                                       int alphabet_size)
{
    int len = 0, sym, code = 0, ret;
    int max_code_length = 0;
    uint16_t *codes;

    /* special-case 1 symbol since the vlc reader cannot handle it */
    for (sym = 0; sym < alphabet_size; sym++) {
        if (code_lengths[sym] > 0) {
            len++;
            code = sym;
            if (len > 1)
                break;
        }
    }
    if (len == 1) {
        r->nb_symbols = 1;
        r->simple_symbols[0] = code;
        r->simple = 1;
        return 0;
    }

    for (sym = 0; sym < alphabet_size; sym++)
        max_code_length = FUNC1(max_code_length, code_lengths[sym]);

    if (max_code_length == 0 || max_code_length > MAX_HUFFMAN_CODE_LENGTH)
        return FUNC0(EINVAL);

    codes = FUNC3(alphabet_size, sizeof(*codes));
    if (!codes)
        return FUNC0(ENOMEM);

    code = 0;
    r->nb_symbols = 0;
    for (len = 1; len <= max_code_length; len++) {
        for (sym = 0; sym < alphabet_size; sym++) {
            if (code_lengths[sym] != len)
                continue;
            codes[sym] = code++;
            r->nb_symbols++;
        }
        code <<= 1;
    }
    if (!r->nb_symbols) {
        FUNC2(codes);
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC4(&r->vlc, 8, alphabet_size,
                   code_lengths, sizeof(*code_lengths), sizeof(*code_lengths),
                   codes, sizeof(*codes), sizeof(*codes), 0);
    if (ret < 0) {
        FUNC2(codes);
        return ret;
    }
    r->simple = 0;

    FUNC2(codes);
    return 0;
}