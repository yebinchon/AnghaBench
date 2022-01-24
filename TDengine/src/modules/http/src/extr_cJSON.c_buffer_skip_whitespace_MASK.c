#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ offset; scalar_t__ length; int /*<<< orphan*/ * content; } ;
typedef  TYPE_1__ parse_buffer ;

/* Variables and functions */
 int* FUNC0 (TYPE_1__* const) ; 
 scalar_t__ FUNC1 (TYPE_1__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static parse_buffer *FUNC2(parse_buffer * const buffer)
{
    if ((buffer == NULL) || (buffer->content == NULL))
    {
        return NULL;
    }

    while (FUNC1(buffer, 0) && (FUNC0(buffer)[0] <= 32))
    {
       buffer->offset++;
    }

    if (buffer->offset == buffer->length)
    {
        buffer->offset--;
    }

    return buffer;
}