#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {TYPE_3__ pb; } ;
typedef  TYPE_1__ FlacEncodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CRC_16_ANSI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int) ; 
 int FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(FlacEncodeContext *s)
{
    int crc;
    FUNC3(&s->pb);
    crc = FUNC0(FUNC1(FUNC2(AV_CRC_16_ANSI), 0, s->pb.buf,
                            FUNC5(&s->pb)>>3));
    FUNC4(&s->pb, 16, crc);
    FUNC3(&s->pb);
}