#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int max_packet_size; } ;
struct TYPE_8__ {unsigned int io_buffer_size; int /*<<< orphan*/  io_buffer; } ;
typedef  TYPE_1__ DynBuffer ;
typedef  TYPE_2__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,unsigned int,int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dyn_buf_seek ; 
 int /*<<< orphan*/  dyn_buf_write ; 
 int /*<<< orphan*/  dyn_packet_buf_write ; 

__attribute__((used)) static int FUNC4(AVIOContext **s, int max_packet_size)
{
    DynBuffer *d;
    unsigned io_buffer_size = max_packet_size ? max_packet_size : 1024;

    if (sizeof(DynBuffer) + io_buffer_size < io_buffer_size)
        return -1;
    d = FUNC2(sizeof(DynBuffer) + io_buffer_size);
    if (!d)
        return FUNC0(ENOMEM);
    d->io_buffer_size = io_buffer_size;
    *s = FUNC3(d->io_buffer, d->io_buffer_size, 1, d, NULL,
                            max_packet_size ? dyn_packet_buf_write : dyn_buf_write,
                            max_packet_size ? NULL : dyn_buf_seek);
    if(!*s) {
        FUNC1(d);
        return FUNC0(ENOMEM);
    }
    (*s)->max_packet_size = max_packet_size;
    return 0;
}