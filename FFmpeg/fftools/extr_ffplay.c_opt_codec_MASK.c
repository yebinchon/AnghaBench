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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 char const* audio_codec_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 char const* subtitle_codec_name ; 
 char const* video_codec_name ; 

__attribute__((used)) static int FUNC3(void *optctx, const char *opt, const char *arg)
{
   const char *spec = FUNC2(opt, ':');
   if (!spec) {
       FUNC1(NULL, AV_LOG_ERROR,
              "No media specifier was specified in '%s' in option '%s'\n",
               arg, opt);
       return FUNC0(EINVAL);
   }
   spec++;
   switch (spec[0]) {
   case 'a' :    audio_codec_name = arg; break;
   case 's' : subtitle_codec_name = arg; break;
   case 'v' :    video_codec_name = arg; break;
   default:
       FUNC1(NULL, AV_LOG_ERROR,
              "Invalid media specifier '%s' in option '%s'\n", spec, opt);
       return FUNC0(EINVAL);
   }
   return 0;
}