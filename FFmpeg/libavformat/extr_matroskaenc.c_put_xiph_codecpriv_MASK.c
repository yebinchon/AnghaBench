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
struct TYPE_3__ {scalar_t__ codec_id; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_VORBIS ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVIOContext *pb, AVCodecParameters *par)
{
    const uint8_t *header_start[3];
    int header_len[3];
    int first_header_size;
    int j;

    if (par->codec_id == AV_CODEC_ID_VORBIS)
        first_header_size = 30;
    else
        first_header_size = 42;

    if (FUNC3(par->extradata, par->extradata_size,
                              first_header_size, header_start, header_len) < 0) {
        FUNC0(s, AV_LOG_ERROR, "Extradata corrupt.\n");
        return -1;
    }

    FUNC1(pb, 2);                    // number packets - 1
    for (j = 0; j < 2; j++) {
        FUNC4(pb, header_len[j]);
    }
    for (j = 0; j < 3; j++)
        FUNC2(pb, header_start[j], header_len[j]);

    return 0;
}