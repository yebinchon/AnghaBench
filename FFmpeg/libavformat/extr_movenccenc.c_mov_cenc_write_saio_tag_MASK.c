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
typedef  int uint8_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, int64_t auxiliary_info_offset)
{
    int64_t pos = FUNC0(pb);
    uint8_t version;

    FUNC3(pb, 0); /* size */
    FUNC5(pb, "saio");
    version = auxiliary_info_offset > 0xffffffff ? 1 : 0;
    FUNC1(pb, version);
    FUNC2(pb, 0); /* flags */
    FUNC3(pb, 1); /* entry count */
    if (version) {
        FUNC4(pb, auxiliary_info_offset);
    } else {
        FUNC3(pb, auxiliary_info_offset);
    }
    return FUNC6(pb, pos);
}