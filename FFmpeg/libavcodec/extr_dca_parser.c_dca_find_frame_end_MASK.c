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
typedef  int uint8_t ;
typedef  int uint64_t ;
struct TYPE_4__ {int frame_start_found; int state64; } ;
struct TYPE_5__ {int size; scalar_t__ lastmarker; int startpos; int framesize; TYPE_1__ pc; } ;
typedef  TYPE_1__ ParseContext ;
typedef  TYPE_2__ DCAParseContext ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
#define  DCA_SYNCWORD_CORE_14B_BE 132 
#define  DCA_SYNCWORD_CORE_14B_LE 131 
#define  DCA_SYNCWORD_CORE_BE 130 
#define  DCA_SYNCWORD_CORE_LE 129 
#define  DCA_SYNCWORD_SUBSTREAM 128 
 int END_NOT_FOUND ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(DCAParseContext *pc1, const uint8_t *buf,
                              int buf_size)
{
    int start_found, size, i;
    uint64_t state;
    ParseContext *pc = &pc1->pc;

    start_found = pc->frame_start_found;
    state       = pc->state64;
    size        = pc1->size;

    i = 0;
    if (!start_found) {
        for (; i < buf_size; i++) {
            size++;
            state = (state << 8) | buf[i];

            if (FUNC5(state) &&
                (!pc1->lastmarker ||
                  pc1->lastmarker == FUNC1(state) ||
                  pc1->lastmarker == DCA_SYNCWORD_SUBSTREAM)) {
                if (!pc1->lastmarker)
                    pc1->startpos = FUNC4(state) ? size - 4 : size - 6;

                if (FUNC4(state))
                    pc1->lastmarker = FUNC3(state);
                else
                    pc1->lastmarker = FUNC1(state);

                start_found = 1;
                size        = 0;

                i++;
                break;
            }
        }
    }

    if (start_found) {
        for (; i < buf_size; i++) {
            size++;
            state = (state << 8) | buf[i];

            if (start_found == 1) {
                switch (pc1->lastmarker) {
                case DCA_SYNCWORD_CORE_BE:
                    if (size == 2) {
                        pc1->framesize = FUNC0(state);
                        start_found    = 2;
                    }
                    break;
                case DCA_SYNCWORD_CORE_LE:
                    if (size == 2) {
                        pc1->framesize = FUNC0(FUNC7(state));
                        start_found    = 4;
                    }
                    break;
                case DCA_SYNCWORD_CORE_14B_BE:
                    if (size == 4) {
                        pc1->framesize = FUNC0(FUNC6(state));
                        start_found    = 4;
                    }
                    break;
                case DCA_SYNCWORD_CORE_14B_LE:
                    if (size == 4) {
                        pc1->framesize = FUNC0(FUNC6(FUNC7(state)));
                        start_found    = 4;
                    }
                    break;
                case DCA_SYNCWORD_SUBSTREAM:
                    if (size == 6) {
                        pc1->framesize = FUNC2(state);
                        start_found    = 4;
                    }
                    break;
                default:
                    FUNC8(0);
                }
                continue;
            }

            if (start_found == 2 && FUNC4(state) &&
                pc1->framesize <= size + 2) {
                pc1->framesize  = size + 2;
                start_found     = 3;
                continue;
            }

            if (start_found == 3) {
                if (size == pc1->framesize + 4) {
                    pc1->framesize += FUNC2(state);
                    start_found     = 4;
                }
                continue;
            }

            if (pc1->framesize > size)
                continue;

            if (FUNC5(state) &&
                (pc1->lastmarker == FUNC1(state) ||
                 pc1->lastmarker == DCA_SYNCWORD_SUBSTREAM)) {
                pc->frame_start_found = 0;
                pc->state64           = -1;
                pc1->size             = 0;
                return FUNC4(state) ? i - 3 : i - 5;
            }
        }
    }

    pc->frame_start_found = start_found;
    pc->state64           = state;
    pc1->size             = size;
    return END_NOT_FOUND;
}