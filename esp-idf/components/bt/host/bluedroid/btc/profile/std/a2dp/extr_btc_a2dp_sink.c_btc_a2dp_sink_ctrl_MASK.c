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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  BTC_MEDIA_AUDIO_SINK_CFG_UPDATE 132 
#define  BTC_MEDIA_AUDIO_SINK_CLEAR_TRACK 131 
#define  BTC_MEDIA_FLUSH_AA_RX 130 
#define  BTC_MEDIA_TASK_SINK_CLEAN_UP 129 
#define  BTC_MEDIA_TASK_SINK_INIT 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static bool FUNC7(uint32_t sig, void *param)
{
    switch (sig) {
    case BTC_MEDIA_TASK_SINK_INIT:
        FUNC5(NULL);
        break;
    case BTC_MEDIA_TASK_SINK_CLEAN_UP:
        FUNC4(NULL);
        break;
    case BTC_MEDIA_AUDIO_SINK_CFG_UPDATE:
        FUNC2(param);
        break;
    case BTC_MEDIA_AUDIO_SINK_CLEAR_TRACK:
        FUNC1();
        break;
    case BTC_MEDIA_FLUSH_AA_RX:
        FUNC3();
        break;
    default:
        FUNC0("media task unhandled evt: 0x%x\n", sig);
    }

    if (param != NULL) {
        FUNC6(param);
    }

    return true;
}