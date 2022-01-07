
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 char const* audio_codec_name ;
 int av_log (int *,int ,char*,char const*,char const*) ;
 char* strchr (char const*,char) ;
 char const* subtitle_codec_name ;
 char const* video_codec_name ;

__attribute__((used)) static int opt_codec(void *optctx, const char *opt, const char *arg)
{
   const char *spec = strchr(opt, ':');
   if (!spec) {
       av_log(((void*)0), AV_LOG_ERROR,
              "No media specifier was specified in '%s' in option '%s'\n",
               arg, opt);
       return AVERROR(EINVAL);
   }
   spec++;
   switch (spec[0]) {
   case 'a' : audio_codec_name = arg; break;
   case 's' : subtitle_codec_name = arg; break;
   case 'v' : video_codec_name = arg; break;
   default:
       av_log(((void*)0), AV_LOG_ERROR,
              "Invalid media specifier '%s' in option '%s'\n", spec, opt);
       return AVERROR(EINVAL);
   }
   return 0;
}
