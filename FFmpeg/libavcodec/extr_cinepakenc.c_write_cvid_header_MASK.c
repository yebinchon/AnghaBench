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
struct TYPE_3__ {int w; int h; } ;
typedef  TYPE_1__ CinepakEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int CVID_HEADER_SIZE ; 

__attribute__((used)) static int FUNC2(CinepakEncContext *s, unsigned char *buf,
                             int num_strips, int data_size, int isakeyframe)
{
    buf[0] = isakeyframe ? 0 : 1;
    FUNC1(&buf[1], data_size + CVID_HEADER_SIZE);
    FUNC0(&buf[4], s->w);
    FUNC0(&buf[6], s->h);
    FUNC0(&buf[8], num_strips);

    return CVID_HEADER_SIZE;
}