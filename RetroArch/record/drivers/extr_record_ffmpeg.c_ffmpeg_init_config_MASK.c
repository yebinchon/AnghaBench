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
struct ff_config_param {int scale_factor; int threads; int frame_drop_ratio; int audio_enable; char* vcodec; char* acodec; char* format; int sample_rate; int /*<<< orphan*/  audio_opts; int /*<<< orphan*/  video_opts; int /*<<< orphan*/  conf; int /*<<< orphan*/  out_pix_fmt; int /*<<< orphan*/  video_bit_rate; int /*<<< orphan*/  video_global_quality; void* video_qscale; int /*<<< orphan*/  audio_bit_rate; int /*<<< orphan*/  audio_global_quality; void* audio_qscale; } ;
struct config_file_entry {char* key; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  pix_fmt ;

/* Variables and functions */
 int /*<<< orphan*/  PIX_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct config_file_entry*) ; 
 scalar_t__ FUNC9 (struct config_file_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC13 (char*,char*) ; 

__attribute__((used)) static bool FUNC14(struct ff_config_param *params,
      const char *config)
{
   struct config_file_entry entry;
   char pix_fmt[64]         = {0};

   params->out_pix_fmt      = PIX_FMT_NONE;
   params->scale_factor     = 1;
   params->threads          = 1;
   params->frame_drop_ratio = 1;
   params->audio_enable     = true;

   if (!config)
      return true;

   FUNC1("[FFmpeg] Loading FFmpeg config \"%s\".\n", config);

   if (!(params->conf = FUNC5(config)))
   {
      FUNC0("[FFmpeg] Failed to load FFmpeg config \"%s\".\n", config);
      return false;
   }

   FUNC6(params->conf, "vcodec", params->vcodec,
         sizeof(params->vcodec));
   FUNC6(params->conf, "acodec", params->acodec,
         sizeof(params->acodec));
   FUNC6(params->conf, "format", params->format,
         sizeof(params->format));

   FUNC12(params->conf, "threads", &params->threads);

   if (!FUNC12(params->conf, "frame_drop_ratio",
            &params->frame_drop_ratio) || !params->frame_drop_ratio)
      params->frame_drop_ratio = 1;

   if (!FUNC7(params->conf, "audio_enable", &params->audio_enable))
      params->audio_enable = true;

   FUNC12(params->conf, "sample_rate", &params->sample_rate);
   FUNC10(params->conf, "scale_factor", &params->scale_factor);

   params->audio_qscale = FUNC11(params->conf, "audio_global_quality",
         &params->audio_global_quality);
   FUNC11(params->conf, "audio_bit_rate", &params->audio_bit_rate);
   params->video_qscale = FUNC11(params->conf, "video_global_quality",
         &params->video_global_quality);
   FUNC11(params->conf, "video_bit_rate", &params->video_bit_rate);

   if (FUNC6(params->conf, "pix_fmt", pix_fmt, sizeof(pix_fmt)))
   {
      params->out_pix_fmt = FUNC4(pix_fmt);
      if (params->out_pix_fmt == PIX_FMT_NONE)
      {
         FUNC0("[FFmpeg] Cannot find pix_fmt \"%s\".\n", pix_fmt);
         return false;
      }
   }

   if (!FUNC8(params->conf, &entry))
      return true;

   do
   {
      if (FUNC13(entry.key, "video_") == entry.key)
      {
         const char *key = entry.key + FUNC2("video_");
         FUNC3(&params->video_opts, key, entry.value, 0);
      }
      else if (FUNC13(entry.key, "audio_") == entry.key)
      {
         const char *key = entry.key + FUNC2("audio_");
         FUNC3(&params->audio_opts, key, entry.value, 0);
      }
   } while (FUNC9(&entry));

   return true;
}