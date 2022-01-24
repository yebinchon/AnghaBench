#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tmp_buf ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int finishing; int /*<<< orphan*/  stream; int /*<<< orphan*/  out_data; scalar_t__ out_size; scalar_t__ initialized; } ;
typedef  TYPE_2__ RTMP_HTTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static int FUNC5(URLContext *h)
{
    RTMP_HTTPContext *rt = h->priv_data;
    uint8_t tmp_buf[2048];
    int ret = 0;

    if (rt->initialized) {
        /* client wants to close the connection */
        rt->finishing = 1;

        do {
            ret = FUNC2(h, tmp_buf, sizeof(tmp_buf));
        } while (ret > 0);

        /* re-init output buffer before sending the close command */
        rt->out_size = 0;

        if ((ret = FUNC4(h, "", 1)) == 1)
            ret = FUNC3(h, "close");
    }

    FUNC0(&rt->out_data);
    FUNC1(rt->stream);

    return ret;
}