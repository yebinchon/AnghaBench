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
struct TYPE_6__ {int flags; TYPE_1__* prot; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_5__ {int /*<<< orphan*/  url_read; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_FLAG_READ ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (TYPE_2__*,unsigned char*,int,int,int /*<<< orphan*/ ) ; 

int FUNC2(URLContext *h, unsigned char *buf, int size)
{
    if (!(h->flags & AVIO_FLAG_READ))
        return FUNC0(EIO);
    return FUNC1(h, buf, size, size, h->prot->url_read);
}