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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb)
{
    /* This atom must be present, but leaving the values at zero
     * seems harmless. */
    FUNC1(pb, 28); /* size */
    FUNC2(pb, "hmhd");
    FUNC1(pb, 0); /* version, flags */
    FUNC0(pb, 0); /* maxPDUsize */
    FUNC0(pb, 0); /* avgPDUsize */
    FUNC1(pb, 0); /* maxbitrate */
    FUNC1(pb, 0); /* avgbitrate */
    FUNC1(pb, 0); /* reserved */
    return 28;
}