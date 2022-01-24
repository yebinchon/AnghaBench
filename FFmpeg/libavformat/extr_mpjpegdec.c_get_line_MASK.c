#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int error; scalar_t__ eof_reached; } ;
typedef  TYPE_1__ AVIOContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb, char *line, int line_size)
{
    FUNC0(pb, line, line_size);

    if (pb->error)
        return pb->error;

    if (pb->eof_reached)
        return AVERROR_EOF;

    FUNC1(line);
    return 0;
}