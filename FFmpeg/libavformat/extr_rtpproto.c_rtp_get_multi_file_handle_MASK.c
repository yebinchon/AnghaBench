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
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int rtp_fd; int rtcp_fd; } ;
typedef  TYPE_2__ RTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(URLContext *h, int **handles,
                                     int *numhandles)
{
    RTPContext *s = h->priv_data;
    int *hs       = *handles = FUNC1(sizeof(**handles) * 2);
    if (!hs)
        return FUNC0(ENOMEM);
    hs[0] = s->rtp_fd;
    hs[1] = s->rtcp_fd;
    *numhandles = 2;
    return 0;
}