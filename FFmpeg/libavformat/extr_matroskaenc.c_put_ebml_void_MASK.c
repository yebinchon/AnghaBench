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
typedef  int uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  EBML_ID_VOID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(AVIOContext *pb, uint64_t size)
{
    int64_t currentpos = FUNC1(pb);

    FUNC0(size >= 2);

    FUNC3(pb, EBML_ID_VOID);
    // we need to subtract the length needed to store the size from the
    // size we need to reserve so 2 cases, we use 8 bytes to store the
    // size if possible, 1 byte otherwise
    if (size < 10)
        FUNC4(pb, size - 2, 0);
    else
        FUNC4(pb, size - 9, 8);
    FUNC2(pb, 0, currentpos + size - FUNC1(pb));
}