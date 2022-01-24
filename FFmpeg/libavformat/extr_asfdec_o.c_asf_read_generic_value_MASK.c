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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
#define  ASF_BOOL 131 
#define  ASF_DWORD 130 
#define  ASF_QWORD 129 
#define  ASF_WORD 128 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb, int type, uint64_t *value)
{

    switch (type) {
    case ASF_BOOL:
        *value = FUNC0(pb);
        break;
    case ASF_DWORD:
        *value = FUNC1(pb);
        break;
    case ASF_QWORD:
        *value = FUNC2(pb);
        break;
    case ASF_WORD:
        *value = FUNC0(pb);
        break;
    default:
        return AVERROR_INVALIDDATA;
    }

    return 0;
}