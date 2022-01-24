#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum HapSectionType { ____Placeholder_HapSectionType } HapSectionType ;
struct TYPE_10__ {int /*<<< orphan*/ * priv_data; } ;
struct TYPE_9__ {int data; int size; } ;
typedef  int /*<<< orphan*/  HapqaExtractContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVBSFContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static int FUNC7(AVBSFContext *bsf, AVPacket *pkt)
{
    HapqaExtractContext *ctx = bsf->priv_data;
    GetByteContext gbc;
    int section_size;
    enum HapSectionType section_type;
    int start_section_size;
    int target_packet_size = 0;
    int ret = 0;

    ret = FUNC5(bsf, pkt);
    if (ret < 0)
        return ret;

    FUNC2(&gbc, pkt->data, pkt->size);
    ret = FUNC6(&gbc, &section_size, &section_type);
    if (ret != 0)
        goto fail;

    if ((section_type & 0x0F) != 0x0D) {
        FUNC0(bsf, AV_LOG_ERROR, "Invalid section type for HAPQA %#04x.\n", section_type & 0x0F);
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    start_section_size = 4;

    FUNC3(&gbc, start_section_size, SEEK_SET);/* go to start of the first texture */

    ret = FUNC6(&gbc, &section_size, &section_type);
    if (ret != 0)
        goto fail;

    target_packet_size = section_size + 4;

    if (FUNC4(ctx, section_type) == 0) { /* the texture is not the one to keep */
        start_section_size += 4 + section_size;
        FUNC3(&gbc, start_section_size, SEEK_SET);/* go to start of the second texture */
        ret = FUNC6(&gbc, &section_size, &section_type);
        if (ret != 0)
            goto fail;

        target_packet_size = section_size + 4;

        if (FUNC4(ctx, section_type) == 0){ /* the second texture is not the one to keep */
            FUNC0(bsf, AV_LOG_ERROR, "No valid texture found.\n");
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }
    }

    pkt->data += start_section_size;
    pkt->size = target_packet_size;

fail:
    if (ret < 0)
        FUNC1(pkt);
    return ret;
}