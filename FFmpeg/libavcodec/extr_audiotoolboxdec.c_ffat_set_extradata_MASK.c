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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_8__ {int /*<<< orphan*/ * extradata; int /*<<< orphan*/  converter; } ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef  scalar_t__ OSStatus ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ ATDecodeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  kAudioConverterDecompressionMagicCookie ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx)
{
    ATDecodeContext *at = avctx->priv_data;
    if (FUNC5(avctx)) {
        OSStatus status;
        UInt32 cookie_size;
        uint8_t *cookie = FUNC4(avctx, &cookie_size);
        if (!cookie)
            return FUNC0(ENOMEM);

        status = FUNC1(at->converter,
                                           kAudioConverterDecompressionMagicCookie,
                                           cookie_size, cookie);
        if (status != 0)
            FUNC3(avctx, AV_LOG_WARNING, "AudioToolbox cookie error: %i\n", (int)status);

        if (cookie != at->extradata)
            FUNC2(cookie);
    }
    return 0;
}