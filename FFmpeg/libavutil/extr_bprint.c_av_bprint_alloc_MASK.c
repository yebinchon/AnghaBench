#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; int size_max; int len; char* str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,unsigned int) ; 
 int UINT_MAX ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int FUNC6(AVBPrint *buf, unsigned room)
{
    char *old_str, *new_str;
    unsigned min_size, new_size;

    if (buf->size == buf->size_max)
        return FUNC0(EIO);
    if (!FUNC3(buf))
        return AVERROR_INVALIDDATA; /* it is already truncated anyway */
    min_size = buf->len + 1 + FUNC1(UINT_MAX - buf->len - 1, room);
    new_size = buf->size > buf->size_max / 2 ? buf->size_max : buf->size * 2;
    if (new_size < min_size)
        new_size = FUNC1(buf->size_max, min_size);
    old_str = FUNC2(buf) ? buf->str : NULL;
    new_str = FUNC4(old_str, new_size);
    if (!new_str)
        return FUNC0(ENOMEM);
    if (!old_str)
        FUNC5(new_str, buf->str, buf->len + 1);
    buf->str  = new_str;
    buf->size = new_size;
    return 0;
}