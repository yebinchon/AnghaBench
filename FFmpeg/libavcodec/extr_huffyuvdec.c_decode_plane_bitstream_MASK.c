#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int bps; int /*<<< orphan*/  gb; scalar_t__** temp16; TYPE_1__* vlc; scalar_t__** temp; } ;
struct TYPE_4__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_2__ HYuvContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OP14bits ; 
 int /*<<< orphan*/  OP8bits ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_BITS ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  re ; 

__attribute__((used)) static void FUNC11(HYuvContext *s, int width, int plane)
{
    int i, count = width/2;

    if (s->bps <= 8) {
        FUNC2(re, &s->gb);
        if (count >= (FUNC9(&s->gb)) / (32 * 2)) {
            for (i = 0; i < count && FUNC0(re, &s->gb) > 0; i++) {
                FUNC3(s->temp[0][2 * i], s->temp[0][2 * i + 1], plane, OP8bits);
            }
        } else {
            for(i=0; i<count; i++){
                FUNC3(s->temp[0][2 * i], s->temp[0][2 * i + 1], plane, OP8bits);
            }
        }
        if( width&1 && FUNC0(re, &s->gb)>0 ) {
            unsigned int index;
            int nb_bits, code, n;
            FUNC6(re, &s->gb);
            index = FUNC5(re, &s->gb, VLC_BITS);
            FUNC7(s->temp[0][width-1], s->vlc[plane].table,
                       &s->gb, re, VLC_BITS, 3);
        }
        FUNC1(re, &s->gb);
    } else if (s->bps <= 14) {
        FUNC2(re, &s->gb);
        if (count >= (FUNC9(&s->gb)) / (32 * 2)) {
            for (i = 0; i < count && FUNC0(re, &s->gb) > 0; i++) {
                FUNC3(s->temp16[0][2 * i], s->temp16[0][2 * i + 1], plane, OP14bits);
            }
        } else {
            for(i=0; i<count; i++){
                FUNC3(s->temp16[0][2 * i], s->temp16[0][2 * i + 1], plane, OP14bits);
            }
        }
        if( width&1 && FUNC0(re, &s->gb)>0 ) {
            unsigned int index;
            int nb_bits, code, n;
            FUNC6(re, &s->gb);
            index = FUNC5(re, &s->gb, VLC_BITS);
            FUNC7(s->temp16[0][width-1], s->vlc[plane].table,
                       &s->gb, re, VLC_BITS, 3);
        }
        FUNC1(re, &s->gb);
    } else {
        if (count >= (FUNC9(&s->gb)) / (32 * 2)) {
            for (i = 0; i < count && FUNC9(&s->gb) > 0; i++) {
                FUNC4(s->temp16[0][2 * i], s->temp16[0][2 * i + 1], plane);
            }
        } else {
            for(i=0; i<count; i++){
                FUNC4(s->temp16[0][2 * i], s->temp16[0][2 * i + 1], plane);
            }
        }
        if( width&1 && FUNC9(&s->gb)>0 ) {
            int dst = FUNC10(&s->gb, s->vlc[plane].table, VLC_BITS, 3)<<2;
            s->temp16[0][width-1] = dst + FUNC8(&s->gb, 2);
        }
    }
}