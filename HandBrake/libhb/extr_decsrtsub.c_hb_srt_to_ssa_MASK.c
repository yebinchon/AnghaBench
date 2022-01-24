#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; scalar_t__* data; } ;
typedef  TYPE_1__ hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 char* FUNC6 (char*,int*) ; 
 int FUNC7 (char*) ; 

void FUNC8(hb_buffer_t *sub_in, int line)
{
    if (sub_in->size == 0)
        return;

    // null terminate input if not already terminated
    if (sub_in->data[sub_in->size-1] != 0)
    {
        FUNC3(sub_in, ++sub_in->size);
        sub_in->data[sub_in->size - 1] = 0;
    }
    char * srt = (char*)sub_in->data;
    // SSA markup expands a little over SRT, so allocate a bit of extra
    // space.  More will be realloc'd if needed.
    hb_buffer_t * sub = FUNC2(sub_in->size + 80);
    char * ssa, *ssa_markup;
    int skip, len, pos, ii;

    // Exchange data between input sub and new ssa_sub
    // After this, sub_in contains ssa data
    FUNC4(sub_in, sub);
    ssa = (char*)sub_in->data;

    FUNC5((char*)sub_in->data, "%d,,Default,,0,0,0,,", line);
    pos = FUNC7((char*)sub_in->data);

    ii = 0;
    while (srt[ii] != '\0')
    {
        if ((ssa_markup = FUNC6(srt + ii, &skip)) != NULL)
        {
            len = FUNC7(ssa_markup);
            FUNC3(sub_in, pos + len + 1);
            // After realloc, sub_in->data may change
            ssa = (char*)sub_in->data;
            FUNC5(ssa + pos, "%s", ssa_markup);
            FUNC0(ssa_markup);
            pos += len;
            ii += skip;
        }
        else
        {
            FUNC3(sub_in, pos + 4);
            // After realloc, sub_in->data may change
            ssa = (char*)sub_in->data;
            if (srt[ii] == '\r')
            {
                if (srt[ii + 1] == '\n')
                {
                    ii++;
                }
                if (srt[ii + 1] != 0)
                {
                    ssa[pos++] = '\\';
                    ssa[pos++] = 'N';
                }
                ii++;
            }
            else if (srt[ii] == '\n')
            {
                if (srt[ii + 1] != 0)
                {
                    ssa[pos++] = '\\';
                    ssa[pos++] = 'N';
                }
                ii++;
            }
            else
            {
                ssa[pos++] = srt[ii++];
            }
        }
    }
    ssa[pos] = '\0';
    sub_in->size = pos + 1;
    FUNC1(&sub);
}