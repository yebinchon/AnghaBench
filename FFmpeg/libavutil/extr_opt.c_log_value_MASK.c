#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 double DBL_MAX ; 
 double DBL_MIN ; 
 double FLT_MAX ; 
 double FLT_MIN ; 
 scalar_t__ INT64_MAX ; 
 double INT64_MIN ; 
 double INT_MAX ; 
 double INT_MIN ; 
 double UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (void*,int,char*,...) ; 

__attribute__((used)) static void FUNC1(void *av_log_obj, int level, double d)
{
    if      (d == INT_MAX) {
        FUNC0(av_log_obj, level, "INT_MAX");
    } else if (d == INT_MIN) {
        FUNC0(av_log_obj, level, "INT_MIN");
    } else if (d == UINT32_MAX) {
        FUNC0(av_log_obj, level, "UINT32_MAX");
    } else if (d == (double)INT64_MAX) {
        FUNC0(av_log_obj, level, "I64_MAX");
    } else if (d == INT64_MIN) {
        FUNC0(av_log_obj, level, "I64_MIN");
    } else if (d == FLT_MAX) {
        FUNC0(av_log_obj, level, "FLT_MAX");
    } else if (d == FLT_MIN) {
        FUNC0(av_log_obj, level, "FLT_MIN");
    } else if (d == -FLT_MAX) {
        FUNC0(av_log_obj, level, "-FLT_MAX");
    } else if (d == -FLT_MIN) {
        FUNC0(av_log_obj, level, "-FLT_MIN");
    } else if (d == DBL_MAX) {
        FUNC0(av_log_obj, level, "DBL_MAX");
    } else if (d == DBL_MIN) {
        FUNC0(av_log_obj, level, "DBL_MIN");
    } else if (d == -DBL_MAX) {
        FUNC0(av_log_obj, level, "-DBL_MAX");
    } else if (d == -DBL_MIN) {
        FUNC0(av_log_obj, level, "-DBL_MIN");
    } else {
        FUNC0(av_log_obj, level, "%g", d);
    }
}