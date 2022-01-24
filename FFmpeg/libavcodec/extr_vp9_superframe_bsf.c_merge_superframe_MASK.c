#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_6__ {size_t* data; size_t size; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 size_t FUNC0 (size_t*,size_t) ; 
 size_t FUNC1 (size_t*,size_t) ; 
 size_t FUNC2 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__* const*,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,size_t) ; 

__attribute__((used)) static int FUNC9(AVPacket * const *in, int n_in, AVPacket *out)
{
    unsigned max, sum, mag, marker, n, sz;
    uint8_t *ptr;
    int res;

    FUNC7(in, n_in, &max, &sum);
    mag = FUNC4(max) >> 3;
    marker = 0xC0 + (mag << 3) + (n_in - 1);
    sz = sum + 2 + (mag + 1) * n_in;
    res = FUNC5(out, sz);
    if (res < 0)
        return res;
    ptr = out->data;
    for (n = 0; n < n_in; n++) {
        FUNC6(ptr, in[n]->data, in[n]->size);
        ptr += in[n]->size;
    }

#define wloop(mag, wr) \
    do { \
        for (n = 0; n < n_in; n++) { \
            wr; \
            ptr += mag + 1; \
        } \
    } while (0)

    // write superframe with marker 110[mag:2][nframes:3]
    *ptr++ = marker;
    switch (mag) {
    case 0:
        wloop(mag, *ptr = in[n]->size);
        break;
    case 1:
        wloop(mag, FUNC0(ptr, in[n]->size));
        break;
    case 2:
        wloop(mag, FUNC1(ptr, in[n]->size));
        break;
    case 3:
        wloop(mag, FUNC2(ptr, in[n]->size));
        break;
    }
    *ptr++ = marker;
    FUNC3(ptr == &out->data[out->size]);

    return 0;
}