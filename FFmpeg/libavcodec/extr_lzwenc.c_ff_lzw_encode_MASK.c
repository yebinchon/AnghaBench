#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int bufsize; int output_bytes; scalar_t__ last_code; int tabsize; int maxcode; TYPE_1__* tab; } ;
struct TYPE_9__ {scalar_t__ hash_prefix; scalar_t__ code; } ;
typedef  TYPE_2__ LZWEncodeState ;

/* Variables and functions */
 scalar_t__ LZW_PREFIX_EMPTY ; 
 scalar_t__ LZW_PREFIX_FREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int FUNC5 (TYPE_2__*) ; 

int FUNC6(LZWEncodeState * s, const uint8_t * inbuf, int insize)
{
    int i;

    if(insize * 3 > (s->bufsize - s->output_bytes) * 2){
        return -1;
    }

    if (s->last_code == LZW_PREFIX_EMPTY)
        FUNC1(s);

    for (i = 0; i < insize; i++) {
        uint8_t c = *inbuf++;
        int code = FUNC2(s, c, s->last_code);
        if (s->tab[code].hash_prefix == LZW_PREFIX_FREE) {
            FUNC4(s, s->last_code);
            FUNC0(s, c, s->last_code, code);
            code= FUNC3(0, c);
        }
        s->last_code = s->tab[code].code;
        if (s->tabsize >= s->maxcode - 1) {
            FUNC1(s);
        }
    }

    return FUNC5(s);
}