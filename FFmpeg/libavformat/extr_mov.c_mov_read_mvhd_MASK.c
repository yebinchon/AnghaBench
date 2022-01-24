#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  duration; int /*<<< orphan*/  metadata; } ;
struct TYPE_5__ {int time_scale; void*** movie_display_matrix; void* duration; TYPE_3__* fc; int /*<<< orphan*/  trex_data; } ;
typedef  TYPE_1__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_TIME_BASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    int i;
    int64_t creation_time;
    int version = FUNC2(pb); /* version */
    FUNC4(pb); /* flags */

    if (version == 1) {
        creation_time = FUNC6(pb);
        FUNC6(pb);
    } else {
        creation_time = FUNC5(pb);
        FUNC5(pb); /* modification time */
    }
    FUNC8(&c->fc->metadata, creation_time, c->fc);
    c->time_scale = FUNC5(pb); /* time scale */
    if (c->time_scale <= 0) {
        FUNC0(c->fc, AV_LOG_ERROR, "Invalid mvhd time scale %d, defaulting to 1\n", c->time_scale);
        c->time_scale = 1;
    }
    FUNC0(c->fc, AV_LOG_TRACE, "time scale = %i\n", c->time_scale);

    c->duration = (version == 1) ? FUNC6(pb) : FUNC5(pb); /* duration */
    // set the AVCodecContext duration because the duration of individual tracks
    // may be inaccurate
    if (c->time_scale > 0 && !c->trex_data)
        c->fc->duration = FUNC1(c->duration, AV_TIME_BASE, c->time_scale);
    FUNC5(pb); /* preferred scale */

    FUNC3(pb); /* preferred volume */

    FUNC7(pb, 10); /* reserved */

    /* movie display matrix, store it in main context and use it later on */
    for (i = 0; i < 3; i++) {
        c->movie_display_matrix[i][0] = FUNC5(pb); // 16.16 fixed point
        c->movie_display_matrix[i][1] = FUNC5(pb); // 16.16 fixed point
        c->movie_display_matrix[i][2] = FUNC5(pb); //  2.30 fixed point
    }

    FUNC5(pb); /* preview time */
    FUNC5(pb); /* preview duration */
    FUNC5(pb); /* poster time */
    FUNC5(pb); /* selection time */
    FUNC5(pb); /* selection duration */
    FUNC5(pb); /* current time */
    FUNC5(pb); /* next track ID */

    return 0;
}