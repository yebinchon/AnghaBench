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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int DWORD_BITS_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

UINT32 FUNC2(DWORD *a, uint32_t keyLength)
{
    int aMostSignDWORDs;

    aMostSignDWORDs = FUNC1(a, keyLength);
    if (aMostSignDWORDs == 0) {
        return 0;
    }

    return (((aMostSignDWORDs - 1) << DWORD_BITS_SHIFT) +
            FUNC0(a[aMostSignDWORDs - 1]) );
}