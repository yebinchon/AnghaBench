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
typedef  unsigned int uint32_t ;
typedef  int int64_t ;
struct TYPE_3__ {int frame_size; } ;
typedef  TYPE_1__ MPADecodeHeader ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int CHECK_SEEK_FAILED ; 
 int CHECK_WRONG_HEADER ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, int64_t pos, uint32_t *ret_header)
{
    int64_t ret = FUNC2(pb, pos, SEEK_SET);
    uint8_t header_buf[4];
    unsigned header;
    MPADecodeHeader sd;
    if (ret < 0)
        return CHECK_SEEK_FAILED;

    ret = FUNC1(pb, &header_buf[0], 4);
    /* We should always find four bytes for a valid mpa header. */
    if (ret < 4)
        return CHECK_SEEK_FAILED;

    header = FUNC0(&header_buf[0]);
    if (FUNC4(header) < 0)
        return CHECK_WRONG_HEADER;
    if (FUNC3(&sd, header) == 1)
        return CHECK_WRONG_HEADER;

    if (ret_header)
        *ret_header = header;
    return sd.frame_size;
}