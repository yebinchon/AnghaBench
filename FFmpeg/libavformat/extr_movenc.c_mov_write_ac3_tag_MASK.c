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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int vos_len; scalar_t__ vos_data; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    GetBitContext gbc;
    PutBitContext pbc;
    uint8_t buf[3];
    int fscod, bsid, bsmod, acmod, lfeon, frmsizecod;

    if (track->vos_len < 7) {
        FUNC1(s, AV_LOG_ERROR,
               "Cannot write moov atom before AC3 packets."
               " Set the delay_moov flag to fix this.\n");
        return FUNC0(EINVAL);
    }

    FUNC2(pb, 11);
    FUNC4(pb, "dac3");

    FUNC8(&gbc, track->vos_data + 4, (track->vos_len - 4) * 8);
    fscod      = FUNC6(&gbc, 2);
    frmsizecod = FUNC6(&gbc, 6);
    bsid       = FUNC6(&gbc, 5);
    bsmod      = FUNC6(&gbc, 3);
    acmod      = FUNC6(&gbc, 3);
    if (acmod == 2) {
        FUNC11(&gbc, 2); // dsurmod
    } else {
        if ((acmod & 1) && acmod != 1)
            FUNC11(&gbc, 2); // cmixlev
        if (acmod & 4)
            FUNC11(&gbc, 2); // surmixlev
    }
    lfeon = FUNC7(&gbc);

    FUNC9(&pbc, buf, sizeof(buf));
    FUNC10(&pbc, 2, fscod);
    FUNC10(&pbc, 5, bsid);
    FUNC10(&pbc, 3, bsmod);
    FUNC10(&pbc, 3, acmod);
    FUNC10(&pbc, 1, lfeon);
    FUNC10(&pbc, 5, frmsizecod >> 1); // bit_rate_code
    FUNC10(&pbc, 5, 0); // reserved

    FUNC5(&pbc);
    FUNC3(pb, buf, sizeof(buf));

    return 11;
}