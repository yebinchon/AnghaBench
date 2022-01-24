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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  AVStream ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PKT_DATA_DISPLAYMATRIX ; 
 double FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (double) ; 
 int FUNC4 (double) ; 
 int FUNC5 (double) ; 

double FUNC6(AVStream *st)
{
    uint8_t* displaymatrix = FUNC2(st,
                                                     AV_PKT_DATA_DISPLAYMATRIX, NULL);
    double theta = 0;
    if (displaymatrix)
        theta = -FUNC0((int32_t*) displaymatrix);

    theta -= 360*FUNC4(theta/360 + 0.9/360);

    if (FUNC3(theta - 90*FUNC5(theta/90)) > 2)
        FUNC1(NULL, AV_LOG_WARNING, "Odd rotation angle.\n"
               "If you want to help, upload a sample "
               "of this file to ftp://upload.ffmpeg.org/incoming/ "
               "and contact the ffmpeg-devel mailing list. (ffmpeg-devel@ffmpeg.org)");

    return theta;
}