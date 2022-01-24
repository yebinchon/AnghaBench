#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_8__ {scalar_t__ eof_reached; } ;
struct TYPE_7__ {scalar_t__ probesize; TYPE_2__* pb; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    uint16_t state;

    // skip data until an ADTS frame is found
    state = FUNC1(s->pb);
    while (!FUNC0(s->pb) && FUNC3(s->pb) < s->probesize) {
        state = (state << 8) | FUNC1(s->pb);
        if ((state >> 4) != 0xFFF)
            continue;
        FUNC2(s->pb, -2, SEEK_CUR);
        break;
    }
    if (s->pb->eof_reached)
        return AVERROR_EOF;
    if ((state >> 4) != 0xFFF)
        return AVERROR_INVALIDDATA;

    return 0;
}