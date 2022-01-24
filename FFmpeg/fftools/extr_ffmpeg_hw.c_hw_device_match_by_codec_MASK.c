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
struct TYPE_3__ {int methods; int /*<<< orphan*/  device_type; } ;
typedef  int /*<<< orphan*/  HWDevice ;
typedef  TYPE_1__ AVCodecHWConfig ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HWDevice *FUNC2(const AVCodec *codec)
{
    const AVCodecHWConfig *config;
    HWDevice *dev;
    int i;
    for (i = 0;; i++) {
        config = FUNC0(codec, i);
        if (!config)
            return NULL;
        if (!(config->methods & AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX))
            continue;
        dev = FUNC1(config->device_type);
        if (dev)
            return dev;
    }
}