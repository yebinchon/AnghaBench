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
struct TYPE_3__ {int alloc; int size; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ hb_tx3g_output_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(hb_tx3g_output_buf_t * output, int size)
{
    if (output->alloc < size)
    {
        uint8_t * tmp;

        output->alloc = size + 1024;
        output->size  = size;
        tmp = FUNC2(output->buf, output->alloc);
        if (tmp == NULL)
        {
            FUNC1("realloc failed!");
            FUNC0(output->buf);
            output->size = 0;
            output->alloc = 0;
            output->buf   = NULL;
            return 0;
        }
        output->buf = tmp;
    }
    return 1;
}