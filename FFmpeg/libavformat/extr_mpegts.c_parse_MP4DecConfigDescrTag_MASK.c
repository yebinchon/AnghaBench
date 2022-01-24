#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  pb; TYPE_1__* active_descr; } ;
struct TYPE_4__ {int dec_config_descr_len; int /*<<< orphan*/  dec_config_descr; } ;
typedef  TYPE_1__ Mp4Descr ;
typedef  TYPE_2__ MP4DescrParseContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(MP4DescrParseContext *d, int64_t off,
                                      int len)
{
    Mp4Descr *descr = d->active_descr;
    if (!descr)
        return AVERROR_INVALIDDATA;
    d->active_descr->dec_config_descr = FUNC1(len);
    if (!descr->dec_config_descr)
        return FUNC0(ENOMEM);
    descr->dec_config_descr_len = len;
    FUNC2(&d->pb, descr->dec_config_descr, len);
    return 0;
}