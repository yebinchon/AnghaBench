#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
struct TYPE_5__ {int /*<<< orphan*/ ** header; scalar_t__* header_len; } ;
typedef  TYPE_1__ OGGStreamContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_2__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ SPEEX_HEADER_SIZE ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVCodecParameters *par,
                                   OGGStreamContext *oggstream, int bitexact,
                                   AVDictionary **m)
{
    uint8_t *p;

    if (par->extradata_size < SPEEX_HEADER_SIZE)
        return AVERROR_INVALIDDATA;

    // first packet: Speex header
    p = FUNC2(SPEEX_HEADER_SIZE);
    if (!p)
        return FUNC0(ENOMEM);
    oggstream->header[0] = p;
    oggstream->header_len[0] = SPEEX_HEADER_SIZE;
    FUNC3(&p, par->extradata, SPEEX_HEADER_SIZE);
    FUNC1(&oggstream->header[0][68], 0);  // set extra_headers to 0

    // second packet: VorbisComment
    p = FUNC4(0, bitexact, &oggstream->header_len[1], m, 0, NULL, 0);
    if (!p)
        return FUNC0(ENOMEM);
    oggstream->header[1] = p;

    return 0;
}