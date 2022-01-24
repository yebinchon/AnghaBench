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
struct TYPE_9__ {scalar_t__ recording_time; } ;
struct TYPE_8__ {size_t file_index; TYPE_1__* enc_ctx; scalar_t__ first_pts; scalar_t__ sync_opts; } ;
struct TYPE_7__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ OutputFile ;

/* Variables and functions */
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 scalar_t__ INT64_MAX ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_3__** output_files ; 

__attribute__((used)) static int FUNC2(OutputStream *ost)
{
    OutputFile *of = output_files[ost->file_index];

    if (of->recording_time != INT64_MAX &&
        FUNC0(ost->sync_opts - ost->first_pts, ost->enc_ctx->time_base, of->recording_time,
                      AV_TIME_BASE_Q) >= 0) {
        FUNC1(ost);
        return 0;
    }
    return 1;
}