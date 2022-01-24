#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {scalar_t__ pos; int /*<<< orphan*/  h; } ;
typedef  TYPE_2__ SubfileContext ;

/* Variables and functions */
 scalar_t__ AVERROR_BUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(URLContext *h)
{
    SubfileContext *c = h->priv_data;
    int64_t ret;

    if ((ret = FUNC2(c->h, c->pos, SEEK_SET)) != c->pos) {
        if (ret >= 0)
            ret = AVERROR_BUG;
        FUNC1(h, AV_LOG_ERROR, "Impossible to seek in file: %s\n",
               FUNC0(ret));
        return ret;
    }
    return 0;
}