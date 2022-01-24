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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb)
{
    FUNC0(pb, 28); /* size */
    FUNC1(pb, "dref");
    FUNC0(pb, 0); /* version & flags */
    FUNC0(pb, 1); /* entry count */

    FUNC0(pb, 0xc); /* size */
    //FIXME add the alis and rsrc atom
    FUNC1(pb, "url ");
    FUNC0(pb, 1); /* version & flags */

    return 28;
}