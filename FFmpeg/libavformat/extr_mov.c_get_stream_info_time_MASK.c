#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ sidx_pts; scalar_t__ first_tfra_pts; scalar_t__ tfdt_dts; } ;
typedef  TYPE_1__ MOVFragmentStreamInfo ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static int64_t FUNC1(MOVFragmentStreamInfo * frag_stream_info)
{
    FUNC0(frag_stream_info);
    if (frag_stream_info->sidx_pts != AV_NOPTS_VALUE)
        return frag_stream_info->sidx_pts;
    if (frag_stream_info->first_tfra_pts != AV_NOPTS_VALUE)
        return frag_stream_info->first_tfra_pts;
    return frag_stream_info->tfdt_dts;
}