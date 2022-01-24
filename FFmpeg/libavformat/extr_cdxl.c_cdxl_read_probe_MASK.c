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
struct TYPE_3__ {scalar_t__ buf_size; int* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*) ; 
 scalar_t__ CDXL_HEADER_SIZE ; 

__attribute__((used)) static int FUNC5(const AVProbeData *p)
{
    int score = AVPROBE_SCORE_EXTENSION + 10;

    if (p->buf_size < CDXL_HEADER_SIZE)
        return 0;

    /* reserved bytes should always be set to 0 */
    if (FUNC4(&p->buf[24]) || FUNC2(&p->buf[10]))
        return 0;

    /* check type */
    if (p->buf[0] != 1)
        return 0;

    /* check palette size */
    if (FUNC0(&p->buf[20]) > 512)
        return 0;

    /* check number of planes */
    if (p->buf[18] || !p->buf[19])
        return 0;

    /* check widh and height */
    if (!FUNC2(&p->buf[14]) || !FUNC2(&p->buf[16]))
        return 0;

    /* chunk size */
    if (FUNC1(&p->buf[2]) < FUNC0(&p->buf[22]) + FUNC0(&p->buf[20]) + CDXL_HEADER_SIZE)
        return 0;

    /* previous chunk size */
    if (FUNC3(&p->buf[6]))
        score /= 2;

    /* current frame number, usually starts from 1 */
    if (FUNC0(&p->buf[12]) != 1)
        score /= 2;

    return score;
}