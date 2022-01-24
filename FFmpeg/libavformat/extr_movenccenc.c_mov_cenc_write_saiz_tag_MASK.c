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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  auxiliary_info_entries; int /*<<< orphan*/  auxiliary_info_sizes; scalar_t__ use_subsamples; } ;
typedef  TYPE_1__ MOVMuxCencContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AES_CTR_IV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(MOVMuxCencContext* ctx, AVIOContext *pb)
{
    int64_t pos = FUNC0(pb);
    FUNC2(pb, 0); /* size */
    FUNC4(pb, "saiz");
    FUNC2(pb, 0); /* version & flags */
    FUNC1(pb, ctx->use_subsamples ? 0 : AES_CTR_IV_SIZE);    /* default size*/
    FUNC2(pb, ctx->auxiliary_info_entries); /* entry count */
    if (ctx->use_subsamples) {
        FUNC3(pb, ctx->auxiliary_info_sizes, ctx->auxiliary_info_entries);
    }
    return FUNC5(pb, pos);
}