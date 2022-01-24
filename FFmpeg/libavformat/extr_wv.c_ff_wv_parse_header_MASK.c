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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int blocksize; int flags; int initial; int final; scalar_t__ crc; scalar_t__ samples; scalar_t__ block_idx; scalar_t__ total_samples; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ WvHeader ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (char,char,char,char) ; 
 int WV_BLOCK_LIMIT ; 
 int WV_FLAG_FINAL_BLOCK ; 
 int WV_FLAG_INITIAL_BLOCK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC4(WvHeader *wv, const uint8_t *data)
{
    FUNC3(wv, 0, sizeof(*wv));

    if (FUNC1(data) != FUNC2('w', 'v', 'p', 'k'))
        return AVERROR_INVALIDDATA;

    wv->blocksize     = FUNC1(data + 4);
    if (wv->blocksize < 24 || wv->blocksize > WV_BLOCK_LIMIT)
        return AVERROR_INVALIDDATA;
    wv->blocksize -= 24;

    wv->version       = FUNC0(data + 8);
    wv->total_samples = FUNC1(data + 12);
    wv->block_idx     = FUNC1(data + 16);
    wv->samples       = FUNC1(data + 20);
    wv->flags         = FUNC1(data + 24);
    wv->crc           = FUNC1(data + 28);

    wv->initial = !!(wv->flags & WV_FLAG_INITIAL_BLOCK);
    wv->final   = !!(wv->flags & WV_FLAG_FINAL_BLOCK);

    return 0;
}