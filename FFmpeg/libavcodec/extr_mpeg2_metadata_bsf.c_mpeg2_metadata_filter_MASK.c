#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  cbc; int /*<<< orphan*/  fragment; } ;
typedef  TYPE_1__ MPEG2MetadataContext ;
typedef  int /*<<< orphan*/  CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVBSFContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVBSFContext *bsf, AVPacket *pkt)
{
    MPEG2MetadataContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->fragment;
    int err;

    err = FUNC2(bsf, pkt);
    if (err < 0)
        return err;

    err = FUNC4(ctx->cbc, frag, pkt);
    if (err < 0) {
        FUNC0(bsf, AV_LOG_ERROR, "Failed to read packet.\n");
        goto fail;
    }

    err = FUNC6(bsf, frag);
    if (err < 0) {
        FUNC0(bsf, AV_LOG_ERROR, "Failed to update frame fragment.\n");
        goto fail;
    }

    err = FUNC5(ctx->cbc, pkt, frag);
    if (err < 0) {
        FUNC0(bsf, AV_LOG_ERROR, "Failed to write packet.\n");
        goto fail;
    }

    err = 0;
fail:
    FUNC3(ctx->cbc, frag);

    if (err < 0)
        FUNC1(pkt);

    return err;
}