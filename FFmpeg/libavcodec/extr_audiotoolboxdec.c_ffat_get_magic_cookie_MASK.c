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
typedef  char uint8_t ;
typedef  scalar_t__ UInt32 ;
struct TYPE_5__ {char* extradata; scalar_t__ extradata_size; } ;
struct TYPE_4__ {scalar_t__ codec_id; TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ ATDecodeContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_AAC ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static uint8_t* FUNC8(AVCodecContext *avctx, UInt32 *cookie_size)
{
    ATDecodeContext *at = avctx->priv_data;
    if (avctx->codec_id == AV_CODEC_ID_AAC) {
        char *extradata;
        PutByteContext pb;
        *cookie_size = 5 + 3 + 5+13 + 5+at->extradata_size;
        if (!(extradata = FUNC0(*cookie_size)))
            return NULL;

        FUNC1(&pb, extradata, *cookie_size);

        // ES descriptor
        FUNC7(&pb, 0x03, 3 + 5+13 + 5+at->extradata_size);
        FUNC2(&pb, 0);
        FUNC6(&pb, 0x00); // flags (= no flags)

        // DecoderConfig descriptor
        FUNC7(&pb, 0x04, 13 + 5+at->extradata_size);

        // Object type indication
        FUNC6(&pb, 0x40);

        FUNC6(&pb, 0x15); // flags (= Audiostream)

        FUNC3(&pb, 0); // Buffersize DB

        FUNC4(&pb, 0); // maxbitrate
        FUNC4(&pb, 0); // avgbitrate

        // DecoderSpecific info descriptor
        FUNC7(&pb, 0x05, at->extradata_size);
        FUNC5(&pb, at->extradata, at->extradata_size);
        return extradata;
    } else {
        *cookie_size = at->extradata_size;
        return at->extradata;
    }
}