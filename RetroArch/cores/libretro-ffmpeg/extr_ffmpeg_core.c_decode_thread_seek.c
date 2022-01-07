
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 double AV_TIME_BASE ;
 int INT64_MAX ;
 int INT64_MIN ;
 int RETRO_LOG_ERROR ;
 scalar_t__* actx ;
 int ass_flush_events (scalar_t__) ;
 scalar_t__* ass_track ;
 size_t audio_streams_ptr ;
 int avcodec_flush_buffers (scalar_t__) ;
 int avformat_seek_file (int ,int,int ,scalar_t__,int ,int ) ;
 double decode_last_audio_time ;
 double decode_last_video_time ;
 int fctx ;
 int log_cb (int ,char*) ;
 scalar_t__* sctx ;
 size_t subtitle_streams_ptr ;
 scalar_t__ vctx ;

__attribute__((used)) static void decode_thread_seek(double time)
{
   int ret;
   int64_t seek_to = time * AV_TIME_BASE;

   if (seek_to < 0)
      seek_to = 0;

   decode_last_video_time = time;
   decode_last_audio_time = time;

   ret = avformat_seek_file(fctx, -1, INT64_MIN, seek_to, INT64_MAX, 0);
   if (ret < 0)
      log_cb(RETRO_LOG_ERROR, "av_seek_frame() failed.\n");

   if (actx[audio_streams_ptr])
      avcodec_flush_buffers(actx[audio_streams_ptr]);
   if (vctx)
      avcodec_flush_buffers(vctx);
   if (sctx[subtitle_streams_ptr])
      avcodec_flush_buffers(sctx[subtitle_streams_ptr]);




}
