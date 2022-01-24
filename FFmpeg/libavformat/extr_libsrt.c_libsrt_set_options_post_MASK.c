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
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {scalar_t__ inputbw; scalar_t__ oheadbw; } ;
typedef  TYPE_2__ SRTContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SRTO_INPUTBW ; 
 int /*<<< orphan*/  SRTO_OHEADBW ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC2(URLContext *h, int fd)
{
    SRTContext *s = h->priv_data;

    if ((s->inputbw >= 0 && FUNC1(h, fd, SRTO_INPUTBW, "SRTO_INPUTBW", &s->inputbw, sizeof(s->inputbw)) < 0) ||
        (s->oheadbw >= 0 && FUNC1(h, fd, SRTO_OHEADBW, "SRTO_OHEADBW", &s->oheadbw, sizeof(s->oheadbw)) < 0)) {
        return FUNC0(EIO);
    }
    return 0;
}