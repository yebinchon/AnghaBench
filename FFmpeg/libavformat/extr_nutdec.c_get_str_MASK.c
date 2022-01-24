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
struct TYPE_6__ {scalar_t__ eof_reached; } ;
typedef  TYPE_1__ AVIOContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 size_t FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,size_t) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(AVIOContext *bc, char *string, unsigned int maxlen)
{
    unsigned int len = FUNC3(bc);

    if (len && maxlen)
        FUNC2(bc, string, FUNC0(len, maxlen));
    while (len > maxlen) {
        FUNC1(bc);
        len--;
        if (bc->eof_reached)
            len = maxlen;
    }

    if (maxlen)
        string[FUNC0(len, maxlen - 1)] = 0;

    if (bc->eof_reached)
        return AVERROR_EOF;
    if (maxlen == len)
        return -1;
    else
        return 0;
}