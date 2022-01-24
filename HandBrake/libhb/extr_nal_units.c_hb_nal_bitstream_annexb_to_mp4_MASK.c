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
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 TYPE_1__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

hb_buffer_t* FUNC4(const uint8_t *data,
                                            const size_t size)
{
    hb_buffer_t *out;
    uint8_t *buf, *end;
    size_t out_size, buf_size;

    out_size = 0;
    buf_size = size;
    buf      = (uint8_t*)data;
    end      = (uint8_t*)data + size;

    while ((buf = FUNC0(buf, &buf_size)) != NULL)
    {
        out_size += FUNC3(NULL, buf, buf_size);
        buf_size  = end - buf;
    }

    out = FUNC1(out_size);
    if (out == NULL)
    {
        FUNC2("hb_nal_bitstream_annexb_to_mp4: hb_buffer_init failed");
        return NULL;
    }

    out_size = 0;
    buf_size = size;
    buf      = (uint8_t*)data;
    end      = (uint8_t*)data + size;

    while ((buf = FUNC0(buf, &buf_size)) != NULL)
    {
        out_size += FUNC3(out->data + out_size, buf, buf_size);
        buf_size  = end - buf;
    }

    return out;
}