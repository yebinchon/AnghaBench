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
typedef  int /*<<< orphan*/  WriterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVCODEC ; 
 int /*<<< orphan*/  AVDEVICE ; 
 int /*<<< orphan*/  AVFILTER ; 
 int /*<<< orphan*/  AVFORMAT ; 
 int /*<<< orphan*/  AVUTIL ; 
 int /*<<< orphan*/  POSTPROC ; 
 int /*<<< orphan*/  SECTION_ID_LIBRARY_VERSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWRESAMPLE ; 
 int /*<<< orphan*/  SWSCALE ; 
 int /*<<< orphan*/  avcodec ; 
 int /*<<< orphan*/  avdevice ; 
 int /*<<< orphan*/  avfilter ; 
 int /*<<< orphan*/  avformat ; 
 int /*<<< orphan*/  avutil ; 
 int /*<<< orphan*/  postproc ; 
 int /*<<< orphan*/  swresample ; 
 int /*<<< orphan*/  swscale ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(WriterContext *w)
{
    FUNC2(w, SECTION_ID_LIBRARY_VERSIONS);
    FUNC0(avutil,     AVUTIL);
    FUNC0(avcodec,    AVCODEC);
    FUNC0(avformat,   AVFORMAT);
    FUNC0(avdevice,   AVDEVICE);
    FUNC0(avfilter,   AVFILTER);
    FUNC0(swscale,    SWSCALE);
    FUNC0(swresample, SWRESAMPLE);
    FUNC0(postproc,   POSTPROC);
    FUNC1(w);
}