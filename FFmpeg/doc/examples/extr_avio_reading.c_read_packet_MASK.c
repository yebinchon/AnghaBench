#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct buffer_data {int size; int ptr; } ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static int FUNC3(void *opaque, uint8_t *buf, int buf_size)
{
    struct buffer_data *bd = (struct buffer_data *)opaque;
    buf_size = FUNC0(buf_size, bd->size);

    if (!buf_size)
        return AVERROR_EOF;
    FUNC2("ptr:%p size:%zu\n", bd->ptr, bd->size);

    /* copy internal buffer data to buf */
    FUNC1(buf, bd->ptr, buf_size);
    bd->ptr  += buf_size;
    bd->size -= buf_size;

    return buf_size;
}