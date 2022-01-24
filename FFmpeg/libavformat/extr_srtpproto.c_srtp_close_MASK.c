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
struct TYPE_5__ {int /*<<< orphan*/ * rtp_hd; int /*<<< orphan*/  srtp_in; int /*<<< orphan*/  srtp_out; } ;
typedef  TYPE_2__ SRTPProtoContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(URLContext *h)
{
    SRTPProtoContext *s = h->priv_data;
    FUNC0(&s->srtp_out);
    FUNC0(&s->srtp_in);
    FUNC1(s->rtp_hd);
    s->rtp_hd = NULL;
    return 0;
}