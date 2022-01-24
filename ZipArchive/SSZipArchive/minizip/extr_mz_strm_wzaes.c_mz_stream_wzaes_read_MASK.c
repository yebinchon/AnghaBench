#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {scalar_t__ max_total_in; scalar_t__ total_in; int /*<<< orphan*/  hmac; TYPE_1__ stream; } ;
typedef  TYPE_2__ mz_stream_wzaes ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_AES_FOOTER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,scalar_t__) ; 

int32_t FUNC3(void *stream, void *buf, int32_t size)
{
    mz_stream_wzaes *wzaes = (mz_stream_wzaes *)stream;
    int64_t max_total_in = 0;
    int32_t bytes_to_read = size;
    int32_t read = 0;

    max_total_in = wzaes->max_total_in - MZ_AES_FOOTER_SIZE;
    if ((int64_t)bytes_to_read > (max_total_in - wzaes->total_in))
        bytes_to_read = (int32_t)(max_total_in - wzaes->total_in);

    read = FUNC1(wzaes->stream.base, buf, bytes_to_read);

    if (read > 0)
    {
        FUNC0(wzaes->hmac, (uint8_t *)buf, read);
        FUNC2(stream, (uint8_t *)buf, read);

        wzaes->total_in += read;
    }

    return read;
}