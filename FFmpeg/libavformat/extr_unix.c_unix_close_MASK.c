#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sun_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  fd; TYPE_1__ addr; scalar_t__ listen; } ;
typedef  TYPE_2__ UnixContext ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef  TYPE_3__ URLContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(URLContext *h)
{
    UnixContext *s = h->priv_data;
    if (s->listen)
        FUNC1(s->addr.sun_path);
    FUNC0(s->fd);
    return 0;
}