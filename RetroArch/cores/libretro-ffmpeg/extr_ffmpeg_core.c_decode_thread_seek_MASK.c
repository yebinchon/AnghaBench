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
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 double AV_TIME_BASE ; 
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  INT64_MIN ; 
 int /*<<< orphan*/  RETRO_LOG_ERROR ; 
 scalar_t__* actx ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__* ass_track ; 
 size_t audio_streams_ptr ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double decode_last_audio_time ; 
 double decode_last_video_time ; 
 int /*<<< orphan*/  fctx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__* sctx ; 
 size_t subtitle_streams_ptr ; 
 scalar_t__ vctx ; 

__attribute__((used)) static void FUNC4(double time)
{
   int ret;
   int64_t seek_to = time * AV_TIME_BASE;

   if (seek_to < 0)
      seek_to = 0;

   decode_last_video_time = time;
   decode_last_audio_time = time;

   ret = FUNC2(fctx, -1, INT64_MIN, seek_to, INT64_MAX, 0);
   if (ret < 0)
      FUNC3(RETRO_LOG_ERROR, "av_seek_frame() failed.\n");

   if (actx[audio_streams_ptr])
      FUNC1(actx[audio_streams_ptr]);
   if (vctx)
      FUNC1(vctx);
   if (sctx[subtitle_streams_ptr])
      FUNC1(sctx[subtitle_streams_ptr]);
#ifdef HAVE_SSA
   if (ass_track[subtitle_streams_ptr])
      ass_flush_events(ass_track[subtitle_streams_ptr]);
#endif
}