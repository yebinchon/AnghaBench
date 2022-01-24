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
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ eof_reached; } ;
typedef  TYPE_1__ AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(AVIOContext *bc, int64_t pos)
{
    pos -= FUNC2(bc);
    if (pos < 0) {
        FUNC1(bc, pos, SEEK_CUR);
        return AVERROR_INVALIDDATA;
    } else {
        while (pos--) {
            if (bc->eof_reached)
                return AVERROR_INVALIDDATA;
            FUNC0(bc);
        }
        return 0;
    }
}