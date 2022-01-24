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
typedef  int /*<<< orphan*/  GXFStreamContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb, GXFStreamContext *sc)
{
    FUNC2(pb, FUNC0(1)); /* sound level to begin to */
    FUNC2(pb, FUNC0(1)); /* sound level to begin to */
    FUNC1(pb, 0); /* number of fields over which to ramp up sound level */
    FUNC1(pb, 0); /* number of fields over which to ramp down sound level */
    FUNC1(pb, 0); /* reserved */
    FUNC1(pb, 0); /* reserved */
    return 32;
}