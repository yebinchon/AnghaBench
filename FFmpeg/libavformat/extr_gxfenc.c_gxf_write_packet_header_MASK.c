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
typedef  int GXFPktType ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(AVIOContext *pb, GXFPktType type)
{
    FUNC1(pb, 0);  /* packet leader for synchro */
    FUNC0(pb, 1);
    FUNC0(pb, type); /* map packet */
    FUNC1(pb, 0);  /* size */
    FUNC1(pb, 0);  /* reserved */
    FUNC0(pb, 0xE1); /* trailer 1 */
    FUNC0(pb, 0xE2); /* trailer 2 */
}