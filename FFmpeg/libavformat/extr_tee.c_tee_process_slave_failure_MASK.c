#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ on_fail; } ;
typedef  TYPE_1__ TeeSlave ;
struct TYPE_8__ {int /*<<< orphan*/  nb_slaves; int /*<<< orphan*/  nb_alive; TYPE_1__* slaves; } ;
typedef  TYPE_2__ TeeContext ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ ON_SLAVE_FAILURE_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *avf, unsigned slave_idx, int err_n)
{
    TeeContext *tee = avf->priv_data;
    TeeSlave *tee_slave = &tee->slaves[slave_idx];

    tee->nb_alive--;

    FUNC2(tee_slave);

    if (!tee->nb_alive) {
        FUNC1(avf, AV_LOG_ERROR, "All tee outputs failed.\n");
        return err_n;
    } else if (tee_slave->on_fail == ON_SLAVE_FAILURE_ABORT) {
        FUNC1(avf, AV_LOG_ERROR, "Slave muxer #%u failed, aborting.\n", slave_idx);
        return err_n;
    } else {
        FUNC1(avf, AV_LOG_ERROR, "Slave muxer #%u failed: %s, continuing with %u/%u slaves.\n",
               slave_idx, FUNC0(err_n), tee->nb_alive, tee->nb_slaves);
        return 0;
    }
}