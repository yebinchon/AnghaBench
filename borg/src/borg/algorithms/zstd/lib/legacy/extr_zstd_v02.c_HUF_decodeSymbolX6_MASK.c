#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_3__ {int /*<<< orphan*/  nbBytes; int /*<<< orphan*/  nbBits; } ;
typedef  int /*<<< orphan*/  HUF_DSeqX6 ;
typedef  TYPE_1__ HUF_DDescX6 ;
typedef  int /*<<< orphan*/  BIT_DStream_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static U32 FUNC3(void* op, BIT_DStream_t* DStream, const HUF_DDescX6* dd, const HUF_DSeqX6* ds, const U32 dtLog)
{
    const size_t val = FUNC0(DStream, dtLog);   /* note : dtLog >= 1 */
    FUNC2(op, ds+val, sizeof(HUF_DSeqX6));
    FUNC1(DStream, dd[val].nbBits);
    return dd[val].nbBytes;
}