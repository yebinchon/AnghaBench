#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int timeout; int timelapse; int onlyLuma; int fullResPreview; int burstCaptureMode; int /*<<< orphan*/  preview_parameters; int /*<<< orphan*/  common_settings; int /*<<< orphan*/  camera_parameters; int /*<<< orphan*/  encoding; int /*<<< orphan*/  frameNextMethod; int /*<<< orphan*/  linkname; } ;
typedef  TYPE_1__ RASPISTILLYUV_STATE ;

/* Variables and functions */
#define  CommandBurstMode 137 
#define  CommandFullResPreview 136 
#define  CommandKeypress 135 
#define  CommandLink 134 
#define  CommandOnlyLuma 133 
#define  CommandSignal 132 
#define  CommandTimelapse 131 
#define  CommandTimeout 130 
#define  CommandUseBGR 129 
#define  CommandUseRGB 128 
 int /*<<< orphan*/  FRAME_NEXT_FOREVER ; 
 int /*<<< orphan*/  FRAME_NEXT_IMMEDIATELY ; 
 int /*<<< orphan*/  FRAME_NEXT_KEYPRESS ; 
 int /*<<< orphan*/  FRAME_NEXT_SIGNAL ; 
 int /*<<< orphan*/  FRAME_NEXT_SINGLE ; 
 int /*<<< orphan*/  FRAME_NEXT_TIMELAPSE ; 
 int /*<<< orphan*/  MMAL_ENCODING_BGR24 ; 
 int /*<<< orphan*/  MMAL_ENCODING_RGB24 ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  application_help_message ; 
 int /*<<< orphan*/  cmdline_commands ; 
 int /*<<< orphan*/  cmdline_commands_size ; 
 int /*<<< orphan*/  default_signal_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(int argc, const char **argv, RASPISTILLYUV_STATE *state)
{
   // Parse the command line arguments.
   // We are looking for --<something> or -<abbreviation of something>

   int valid = 1; // set 0 if we have a bad parameter
   int i;

   for (i = 1; i < argc && valid; i++)
   {
      int command_id, num_parameters;

      if (!argv[i])
         continue;

      if (argv[i][0] != '-')
      {
         valid = 0;
         continue;
      }

      // Assume parameter is valid until proven otherwise
      valid = 1;

      command_id = FUNC3(cmdline_commands, cmdline_commands_size, &argv[i][1], &num_parameters);

      // If we found a command but are missing a parameter, continue (and we will drop out of the loop)
      if (command_id != -1 && num_parameters > 0 && (i + 1 >= argc) )
         continue;

      //  We are now dealing with a command line option
      switch (command_id)
      {
      case CommandLink :
      {
         int len = FUNC8(argv[i+1]);
         if (len)
         {
            state->linkname = FUNC1(len + 10);
            FUNC10(state->linkname);
            if (state->linkname)
               FUNC9(state->linkname, argv[i + 1], len+1);
            i++;
         }
         else
            valid = 0;
         break;

      }

      case CommandTimeout: // Time to run viewfinder for before taking picture, in seconds
      {
         if (FUNC7(argv[i + 1], "%d", &state->timeout) == 1)
         {
            // Ensure that if previously selected CommandKeypress we don't overwrite it
            if (state->timeout == 0 && state->frameNextMethod == FRAME_NEXT_SINGLE)
               state->frameNextMethod = FRAME_NEXT_FOREVER;

            i++;
         }
         else
            valid = 0;
         break;
      }

      case CommandTimelapse:
         if (FUNC7(argv[i + 1], "%u", &state->timelapse) != 1)
            valid = 0;
         else
         {
            if (state->timelapse)
               state->frameNextMethod = FRAME_NEXT_TIMELAPSE;
            else
               state->frameNextMethod = FRAME_NEXT_IMMEDIATELY;

            i++;
         }
         break;

      case CommandUseRGB: // display lots of data during run
         if (state->onlyLuma)
         {
            FUNC0(stderr, "--luma and --rgb/--bgr are mutually exclusive\n");
            valid = 0;
         }
         state->encoding = MMAL_ENCODING_RGB24;
         break;

      case CommandFullResPreview:
         state->fullResPreview = 1;
         break;

      case CommandKeypress: // Set keypress between capture mode
         state->frameNextMethod = FRAME_NEXT_KEYPRESS;

         if (state->timeout == -1)
            state->timeout = 0;

         break;

      case CommandSignal:   // Set SIGUSR1 between capture mode
         state->frameNextMethod = FRAME_NEXT_SIGNAL;
         // Reenable the signal
         FUNC6(SIGUSR1, default_signal_handler);

         if (state->timeout == -1)
            state->timeout = 0;

         break;

      case CommandBurstMode:
         state->burstCaptureMode=1;
         break;

      case CommandOnlyLuma:
         if (state->encoding)
         {
            FUNC0(stderr, "--luma and --rgb are mutually exclusive\n");
            valid = 0;
         }
         state->onlyLuma = 1;
         break;

      case CommandUseBGR:
         if (state->onlyLuma)
         {
            FUNC0(stderr, "--luma and --rgb/--bgr are mutually exclusive\n");
            valid = 0;
         }
         state->encoding = MMAL_ENCODING_BGR24;
         break;

      default:
      {
         // Try parsing for any image specific parameters
         // result indicates how many parameters were used up, 0,1,2
         // but we adjust by -1 as we have used one already
         const char *second_arg = (i + 1 < argc) ? argv[i + 1] : NULL;

         int parms_used = (FUNC2(&state->camera_parameters, &argv[i][1], second_arg));

         // Still unused, try common settings
         if (!parms_used)
            parms_used = FUNC4(&state->common_settings, &argv[i][1], second_arg, &application_help_message);

         // Still unused, try preview options
         if (!parms_used)
            parms_used = FUNC5(&state->preview_parameters, &argv[i][1], second_arg);

         // If no parms were used, this must be a bad parameters
         if (!parms_used)
            valid = 0;
         else
            i += parms_used - 1;

         break;
      }
      }
   }

   if (!valid)
   {
      FUNC0(stderr, "Invalid command line option (%s)\n", argv[i-1]);
      return 1;
   }

   return 0;
}