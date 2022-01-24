#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ vorbis_context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(vorbis_context *vc)
{
    GetBitContext *gb = &vc->gb;
    int ret;

    if ((FUNC1(gb, 8) != 'v') || (FUNC1(gb, 8) != 'o') ||
        (FUNC1(gb, 8) != 'r') || (FUNC1(gb, 8) != 'b') ||
        (FUNC1(gb, 8) != 'i') || (FUNC1(gb, 8) != 's')) {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (no vorbis signature). \n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = FUNC3(vc))) {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (codebooks). \n");
        return ret;
    }
    if ((ret = FUNC8(vc))) {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (time domain transforms). \n");
        return ret;
    }
    if ((ret = FUNC4(vc))) {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (floors). \n");
        return ret;
    }
    if ((ret = FUNC7(vc))) {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (residues). \n");
        return ret;
    }
    if ((ret = FUNC5(vc))) {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (mappings). \n");
        return ret;
    }
    if ((ret = FUNC6(vc))) {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (modes). \n");
        return ret;
    }
    if (!FUNC2(gb)) {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (framing flag). \n");
        return AVERROR_INVALIDDATA; // framing flag bit unset error
    }

    return 0;
}