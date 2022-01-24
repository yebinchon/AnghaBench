#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_7__ {unsigned int width; unsigned int height; } ;
struct TYPE_6__ {unsigned int width; unsigned int height; } ;
struct TYPE_10__ {int tunnelling; int stepping; float seeking; int disable_playback; int disable_video_decode; int disable_video; int disable_audio; int enable_scheduling; unsigned int output_num; int copy_input; int copy_output; char const* component_video_render; char const* component_video_decoder; char const* component_splitter; char const* component_video_converter; char const* component_video_scheduler; char const* component_audio_render; char const* component_audio_decoder; char const* component_container_reader; char const* audio_destination; unsigned int video_destination; int window; int audio_passthrough; TYPE_2__ render_rect; void* render_format; TYPE_1__ output_rect; void* output_format; } ;
struct TYPE_8__ {char const* output_uri; } ;
struct TYPE_9__ {char const* uri; TYPE_3__ options; } ;

/* Variables and functions */
 scalar_t__ FILE_PLAY_MAX ; 
 char* VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,void**,unsigned int*,unsigned int*) ; 
 TYPE_5__ options ; 
 TYPE_4__* play_info ; 
 scalar_t__ play_info_count ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 unsigned int sleepy_time ; 
 int FUNC4 (char const*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*,char) ; 
 int unclean_exit ; 
 int /*<<< orphan*/  verbosity ; 

__attribute__((used)) static int FUNC7(int argc, const char **argv)
{
   unsigned int value_u1 = 0, value_u2 = 0;
   uint32_t color_format;
   float value_f = 0;
   int i, j;

   /* Parse the command line arguments */
   for(i = 1; i < argc; i++)
   {
      if(!argv[i]) continue;

      if(argv[i][0] != '-')
      {
         /* Not an option argument so will be the input URI */
         if (play_info_count >= FILE_PLAY_MAX)
         {
            FUNC1(stderr, "Too many URIs!\n");
            goto usage;
         }
         play_info[play_info_count++].uri = argv[i];
         continue;
      }

      /* We are now dealing with command line options */
      switch(argv[i][1])
      {
      case 'V':
         FUNC3("Version: %s\n", VERSION);
         FUNC0(0);
      case 'v':
         for (j = 1; argv[i][j] == 'v'; j++) verbosity++;
         break;
      case 'X':
         unclean_exit = 1;
         break;
      case 'd':
         options.tunnelling = 1;
         break;
      case 's':
         if (!FUNC5(argv[i]+1, "step"))
         {
            options.stepping = 1;
            break;
         }
         /* coverity[secure_coding] Only reading numbers, so can't overflow */
         else if (!argv[i][2] && ++i < argc &&
                  FUNC4(argv[i], "%f", &value_f) == 1)
         {
            options.seeking = value_f;
            break;
         }
         goto usage;
      case 'n':
         switch (argv[i][2])
         {
            case 'p': options.disable_playback = 1; break;
            case 'v':
               if(argv[i][3] == 'd')
                  options.disable_video_decode = 1;
               else
                  options.disable_video = 1;
               break;
            case 'a': options.disable_audio = 1; break;
            default: break;
         }
         break;
      case 'e':
         if (argv[i][2] != 's')
            goto usage;
         options.enable_scheduling = 1; break;
         break;
      case 't':
         /* coverity[secure_coding] Only reading integers, so can't overflow */
         if (++i >= argc || FUNC4(argv[i], "%u", &sleepy_time) != 1)
            goto usage;    /* Time missing / invalid */
         break;
      case 'x':
         /* coverity[secure_coding] Only reading integers, so can't overflow */
         if (++i >= argc || FUNC4(argv[i], "%u", &value_u1) != 1)
            goto usage;
         options.output_num = value_u1;
         break;
      case 'f':
         if (i + 1 >= argc || FUNC2(argv[++i], &color_format, &value_u1, &value_u2))
            goto usage;
         if (argv[i-1][2] == 0)
         {
            options.output_format = color_format;
            options.output_rect.width = value_u1;
            options.output_rect.height = value_u2;
         }
         else if (argv[i-1][2] == 'r')
         {
            options.render_format = color_format;
            options.render_rect.width = value_u1;
            options.render_rect.height = value_u2;
         }
         else
            goto usage;
         break;
      case 'c':
         if (!argv[i][2])
         {
            options.copy_input = 1;
            options.copy_output = 1;
         }
         else if (argv[i][2] == 'i')
            options.copy_input = 1;
         else if (argv[i][2] == 'o')
            options.copy_output = 1;
         break;
      case 'm':
         if (argv[i][2] == 'v')
         {
            if (argv[i][3] == 'r' && i < argc)
               options.component_video_render = argv[++i];
            else if (argv[i][3] == 'd' && i < argc)
               options.component_video_decoder = argv[++i];
            else if (argv[i][3] == 's' && i < argc)
               options.component_splitter = argv[++i];
            else if (argv[i][3] == 'c' && i < argc)
               options.component_video_converter = argv[++i];
            else if (argv[i][3] == 'h' && i < argc)
               options.component_video_scheduler = argv[++i];
            else
               goto usage;
         }
         else if (argv[i][2] == 'a')
         {
            if (argv[i][3] == 'r' && i < argc)
               options.component_audio_render = argv[++i];
            else if (argv[i][3] == 'd' && i < argc)
               options.component_audio_decoder = argv[++i];
            else
               goto usage;
         }
         else if (argv[i][2] == 'c')
         {
            if (argv[i][3] == 'r' && i < argc)
               options.component_container_reader = argv[++i];
            else
               goto usage;
         }
         else
            goto usage;
         break;
      case 'o':
         if (++i >= argc || play_info_count >= FILE_PLAY_MAX)
            goto usage;
         play_info[play_info_count].options.output_uri = argv[i];
         break;

      case 'a':
         if (++i >= argc)
            goto usage;
         options.audio_destination = argv[i];
         break;

      case 'r':
         if (i + 1 >= argc)
            goto usage;
         if (argv[i][2] == 'a')
            options.audio_destination = argv[++i];
         else if (argv[i][2] == 'v')
         {
            /* coverity[secure_coding] Only reading integers, so can't overflow */
            if (FUNC4(argv[++i], "%u", &options.video_destination) != 1)
               goto usage;
         }
         else
            goto usage;
         break;

      case 'w':
         options.window = 1;
         break;

      case 'p':
         options.audio_passthrough = 1;
         break;

      case 'h': goto usage;
      default: goto invalid_option;
      }
      continue;
   }

   /* Sanity check that we have at least an input uri */
   if(!play_info_count)
   {
     FUNC1(stderr, "missing uri argument\n");
     goto usage;
   }

   return 0;

invalid_option:
   FUNC1(stderr, "invalid command line option (%s)\n", argv[i]);

usage:
   {
      const char *program;

      program = FUNC6(argv[0], '\\');
      if (program)
         program++;
      if (!program)
      {
         program = FUNC6(argv[0], '/');
         if (program)
            program++;
      }
      if (!program)
         program = argv[0];

      FUNC1(stderr, "usage: %s [options] uri0 uri1 ... uriN\n", program);
      FUNC1(stderr, "options list:\n");
      FUNC1(stderr, " -h    : help\n");
      FUNC1(stderr, " -V    : print version and exit\n");
      FUNC1(stderr, " -v(vv): increase verbosity\n");
      FUNC1(stderr, " -np   : disable playback phase\n");
      FUNC1(stderr, " -nv   : disable video\n");
      FUNC1(stderr, " -nvd  : disable video decode\n");
      FUNC1(stderr, " -na   : disable audio\n");
      FUNC1(stderr, " -es   : enable scheduling\n");
      FUNC1(stderr, " -t <n>: play URI(s) for <n> seconds then stop\n");
      FUNC1(stderr, " -f <fourcc:widthxheight> : set format used on output of decoder\n");
      FUNC1(stderr, " -fr <fourcc:widthxheight> : set format used for rendering\n");
      FUNC1(stderr, " -c    : do full copy of data transferred to videocore\n");
      FUNC1(stderr, " -ci   : full copy for input buffers to decoder\n");
      FUNC1(stderr, " -co   : full copy for output buffers from decoder\n");
      FUNC1(stderr, " -X    : exit without tearing down the mmal pipeline (for testing)\n");
      FUNC1(stderr, " -x <n>: use <n> video render modules \n");
      FUNC1(stderr, " -d    : use direct port connections (aka tunnelling)\n");
      FUNC1(stderr, " -step : stepping (displays 1 frame at a time)\n");
      FUNC1(stderr, " -s <f>: seek to <f> seconds into the stream\n");
      FUNC1(stderr, " -o <s>: output uri\n");
      FUNC1(stderr, " -mcr <s>:  name of the container reader module to use\n");
      FUNC1(stderr, " -mvr <s>:  name of the video render module to use\n");
      FUNC1(stderr, " -mvd <s>:  name of the video decoder module to use\n");
      FUNC1(stderr, " -mvc <s>:  name of the video converter module to use\n");
      FUNC1(stderr, " -mvh <s>:  name of the video scheduler to use\n");
      FUNC1(stderr, " -mvs <s>:  name of the splitter module to use\n");
      FUNC1(stderr, " -mar <s>:  name of the audio render module to use\n");
      FUNC1(stderr, " -mad <s>:  name of the audio decoder module to use\n");
      FUNC1(stderr, " -ra <s>: set audio destination\n");
      FUNC1(stderr, " -rv <n>: set video destination\n");
      FUNC1(stderr, " -p    : use audio passthrough\n");
      FUNC1(stderr, " -w    : window mode (i.e. not fullscreen)\n");
   }
   return 1;
}