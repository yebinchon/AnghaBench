#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_10__ {size_t layout; uintptr_t h; uintptr_t w; } ;
struct TYPE_12__ {int* stride; TYPE_5__* allocator_data; int /*<<< orphan*/ ** data; TYPE_2__ p; TYPE_1__* seq_hdr; } ;
struct TYPE_11__ {int pool_size; int /*<<< orphan*/  pool; } ;
struct TYPE_9__ {size_t hbd; } ;
typedef  TYPE_3__ Libdav1dContext ;
typedef  TYPE_4__ Dav1dPicture ;
typedef  TYPE_5__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DAV1D_PICTURE_ALIGNMENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (uintptr_t,int) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__**) ; 
 int FUNC6 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ *,int*) ; 
 int** pix_fmt ; 

__attribute__((used)) static int FUNC8(Dav1dPicture *p, void *cookie)
{
    Libdav1dContext *dav1d = cookie;
    enum AVPixelFormat format = pix_fmt[p->p.layout][p->seq_hdr->hbd];
    int ret, linesize[4], h = FUNC1(p->p.h, 128);
    uint8_t *aligned_ptr, *data[4];
    AVBufferRef *buf;

    ret = FUNC6(data, linesize, NULL, format, FUNC1(p->p.w, 128),
                               h, DAV1D_PICTURE_ALIGNMENT);
    if (ret < 0)
        return ret;

    if (ret != dav1d->pool_size) {
        FUNC4(&dav1d->pool);
        // Use twice the amount of required padding bytes for aligned_ptr below.
        dav1d->pool = FUNC3(ret + DAV1D_PICTURE_ALIGNMENT * 2, NULL);
        if (!dav1d->pool) {
            dav1d->pool_size = 0;
            return FUNC0(ENOMEM);
        }
        dav1d->pool_size = ret;
    }
    buf = FUNC2(dav1d->pool);
    if (!buf)
        return FUNC0(ENOMEM);

    // libdav1d requires DAV1D_PICTURE_ALIGNMENT aligned buffers, which av_malloc()
    // doesn't guarantee for example when AVX is disabled at configure time.
    // Use the extra DAV1D_PICTURE_ALIGNMENT padding bytes in the buffer to align it
    // if required.
    aligned_ptr = (uint8_t *)FUNC1((uintptr_t)buf->data, DAV1D_PICTURE_ALIGNMENT);
    ret = FUNC7(data, format, h, aligned_ptr, linesize);
    if (ret < 0) {
        FUNC5(&buf);
        return ret;
    }

    p->data[0] = data[0];
    p->data[1] = data[1];
    p->data[2] = data[2];
    p->stride[0] = linesize[0];
    p->stride[1] = linesize[1];
    p->allocator_data = buf;

    return 0;
}