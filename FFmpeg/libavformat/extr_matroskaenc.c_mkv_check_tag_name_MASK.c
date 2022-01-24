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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ MATROSKA_ID_TAGTARGETS_ATTACHUID ; 
 scalar_t__ MATROSKA_ID_TAGTARGETS_TRACKUID ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char *name, uint32_t elementid)
{
    return FUNC0(name, "title") &&
           FUNC0(name, "stereo_mode") &&
           FUNC0(name, "creation_time") &&
           FUNC0(name, "encoding_tool") &&
           FUNC0(name, "duration") &&
           (elementid != MATROSKA_ID_TAGTARGETS_TRACKUID ||
            FUNC0(name, "language")) &&
           (elementid != MATROSKA_ID_TAGTARGETS_ATTACHUID ||
            (FUNC0(name, "filename") &&
             FUNC0(name, "mimetype")));
}