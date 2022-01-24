#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {unsigned int bytesused; unsigned int length; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int num_planes; TYPE_3__ buf; TYPE_2__* planes; TYPE_1__* plane_info; } ;
typedef  TYPE_4__ V4L2Buffer ;
struct TYPE_7__ {unsigned int bytesused; unsigned int length; } ;
struct TYPE_6__ {unsigned int length; scalar_t__ mm_addr; } ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 unsigned int FUNC1 (int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(V4L2Buffer *out, int plane, const uint8_t* data, int size, int offset, AVBufferRef* bref)
{
    unsigned int bytesused, length;

    if (plane >= out->num_planes)
        return FUNC0(EINVAL);

    length = out->plane_info[plane].length;
    bytesused = FUNC1(size+offset, length);

    FUNC3((uint8_t*)out->plane_info[plane].mm_addr+offset, data, FUNC1(size, length-offset));

    if (FUNC2(out->buf.type)) {
        out->planes[plane].bytesused = bytesused;
        out->planes[plane].length = length;
    } else {
        out->buf.bytesused = bytesused;
        out->buf.length = length;
    }

    return 0;
}