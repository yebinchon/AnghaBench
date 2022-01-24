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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  max_blocksize; int /*<<< orphan*/  channels; } ;
struct TYPE_5__ {TYPE_1__ flac_stream_info; int /*<<< orphan*/  decoded_buffer; scalar_t__ decoded; int /*<<< orphan*/  decoded_buffer_size; } ;
typedef  TYPE_2__ FLACContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S32P ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(FLACContext *s)
{
    int buf_size;
    int ret;

    FUNC1(s->flac_stream_info.max_blocksize);

    buf_size = FUNC4(NULL, s->flac_stream_info.channels,
                                          s->flac_stream_info.max_blocksize,
                                          AV_SAMPLE_FMT_S32P, 0);
    if (buf_size < 0)
        return buf_size;

    FUNC2(&s->decoded_buffer, &s->decoded_buffer_size, buf_size);
    if (!s->decoded_buffer)
        return FUNC0(ENOMEM);

    ret = FUNC3((uint8_t **)s->decoded, NULL,
                                 s->decoded_buffer,
                                 s->flac_stream_info.channels,
                                 s->flac_stream_info.max_blocksize,
                                 AV_SAMPLE_FMT_S32P, 0);
    return ret < 0 ? ret : 0;
}