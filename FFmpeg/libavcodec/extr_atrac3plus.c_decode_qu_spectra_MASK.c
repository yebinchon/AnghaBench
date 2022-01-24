#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int16_t ;
struct TYPE_5__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ VLC ;
struct TYPE_6__ {int group_size; int num_coeffs; int bits; int is_signed; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ Atrac3pSpecCodeTab ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(GetBitContext *gb, const Atrac3pSpecCodeTab *tab,
                              VLC *vlc_tab, int16_t *out, const int num_specs)
{
    int i, j, pos, cf;
    int group_size = tab->group_size;
    int num_coeffs = tab->num_coeffs;
    int bits       = tab->bits;
    int is_signed  = tab->is_signed;
    unsigned val;

    for (pos = 0; pos < num_specs;) {
        if (group_size == 1 || FUNC1(gb)) {
            for (j = 0; j < group_size; j++) {
                val = FUNC2(gb, vlc_tab->table, vlc_tab->bits, 1);

                for (i = 0; i < num_coeffs; i++) {
                    cf = FUNC0(val, bits);
                    if (is_signed)
                        cf = FUNC3(cf, bits);
                    else if (cf && FUNC1(gb))
                        cf = -cf;

                    out[pos++] = cf;
                    val      >>= bits;
                }
            }
        } else /* group skipped */
            pos += group_size * num_coeffs;
    }
}