#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  codec_info; } ;
typedef  TYPE_1__ tBTC_MEDIA_SINK_CFG_UPDATE ;
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  AVDT_CODEC_SIZE ; 
 int /*<<< orphan*/  BTC_MEDIA_AUDIO_SINK_CFG_UPDATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

void FUNC6(UINT8 *p_av)
{
    FUNC2("btc reset decoder");
    FUNC0("btc reset decoder p_codec_info[%x:%x:%x:%x:%x:%x]\n",
                     p_av[1], p_av[2], p_av[3],
                     p_av[4], p_av[5], p_av[6]);

    tBTC_MEDIA_SINK_CFG_UPDATE *p_buf;
    if (NULL == (p_buf = FUNC5(sizeof(tBTC_MEDIA_SINK_CFG_UPDATE)))) {
        FUNC1("btc reset decoder No Buffer ");
        return;
    }

    FUNC4(p_buf->codec_info, p_av, AVDT_CODEC_SIZE);
    FUNC3(BTC_MEDIA_AUDIO_SINK_CFG_UPDATE, p_buf);
}