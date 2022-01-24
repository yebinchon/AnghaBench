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
 int /*<<< orphan*/  AVCODEC ; 
 int /*<<< orphan*/  AVDEVICE ; 
 int /*<<< orphan*/  AVFILTER ; 
 int /*<<< orphan*/  AVFORMAT ; 
 int /*<<< orphan*/  AVRESAMPLE ; 
 int /*<<< orphan*/  AVUTIL ; 
 int /*<<< orphan*/  POSTPROC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SWRESAMPLE ; 
 int /*<<< orphan*/  SWSCALE ; 
 int /*<<< orphan*/  avcodec ; 
 int /*<<< orphan*/  avdevice ; 
 int /*<<< orphan*/  avfilter ; 
 int /*<<< orphan*/  avformat ; 
 int /*<<< orphan*/  avresample ; 
 int /*<<< orphan*/  avutil ; 
 int /*<<< orphan*/  postproc ; 
 int /*<<< orphan*/  swresample ; 
 int /*<<< orphan*/  swscale ; 

__attribute__((used)) static void FUNC1(int flags, int level)
{
    FUNC0(avutil,     AVUTIL,     flags, level);
    FUNC0(avcodec,    AVCODEC,    flags, level);
    FUNC0(avformat,   AVFORMAT,   flags, level);
    FUNC0(avdevice,   AVDEVICE,   flags, level);
    FUNC0(avfilter,   AVFILTER,   flags, level);
    FUNC0(avresample, AVRESAMPLE, flags, level);
    FUNC0(swscale,    SWSCALE,    flags, level);
    FUNC0(swresample, SWRESAMPLE, flags, level);
    FUNC0(postproc,   POSTPROC,   flags, level);
}