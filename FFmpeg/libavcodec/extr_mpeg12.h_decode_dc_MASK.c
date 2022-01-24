#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  table; } ;
struct TYPE_3__ {int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  DC_VLC_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ ff_dc_chroma_vlc ; 
 TYPE_1__ ff_dc_lum_vlc ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(GetBitContext *gb, int component)
{
    int code, diff;

    if (component == 0) {
        code = FUNC1(gb, ff_dc_lum_vlc.table, DC_VLC_BITS, 2);
    } else {
        code = FUNC1(gb, ff_dc_chroma_vlc.table, DC_VLC_BITS, 2);
    }
    if (code < 0){
        FUNC0(NULL, AV_LOG_ERROR, "invalid dc code at\n");
        return 0xffff;
    }
    if (code == 0) {
        diff = 0;
    } else {
        diff = FUNC2(gb, code);
    }
    return diff;
}