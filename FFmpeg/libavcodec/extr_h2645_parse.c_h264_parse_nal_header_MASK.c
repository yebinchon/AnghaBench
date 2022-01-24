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
struct TYPE_3__ {void* ref_idc; void* type; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ H2645NAL ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(H2645NAL *nal, void *logctx)
{
    GetBitContext *gb = &nal->gb;

    if (FUNC2(gb) != 0)
        return AVERROR_INVALIDDATA;

    nal->ref_idc = FUNC1(gb, 2);
    nal->type    = FUNC1(gb, 5);

    FUNC0(logctx, AV_LOG_DEBUG,
           "nal_unit_type: %d(%s), nal_ref_idc: %d\n",
           nal->type, FUNC3(nal->type), nal->ref_idc);

    return 1;
}