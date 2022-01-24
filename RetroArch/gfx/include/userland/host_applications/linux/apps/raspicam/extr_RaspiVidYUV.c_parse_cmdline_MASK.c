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
struct TYPE_3__ {int timeout; int demoInterval; int demoMode; int onTime; int offTime; int bCapturing; int useRGB; int onlyLuma; int save_pts; int netListen; int /*<<< orphan*/  preview_parameters; int /*<<< orphan*/  common_settings; int /*<<< orphan*/  camera_parameters; int /*<<< orphan*/  pts_filename; int /*<<< orphan*/  waitMethod; int /*<<< orphan*/  framerate; } ;
typedef  TYPE_1__ RASPIVIDYUV_STATE ;

/* Variables and functions */
#define  CommandDemoMode 138 
#define  CommandFramerate 137 
#define  CommandInitialState 136 
#define  CommandKeypress 135 
#define  CommandNetListen 134 
#define  CommandOnlyLuma 133 
#define  CommandSavePTS 132 
#define  CommandSignal 131 
#define  CommandTimed 130 
#define  CommandTimeout 129 
#define  CommandUseRGB 128 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  WAIT_METHOD_FOREVER ; 
 int /*<<< orphan*/  WAIT_METHOD_KEYPRESS ; 
 int /*<<< orphan*/  WAIT_METHOD_NONE ; 
 int /*<<< orphan*/  WAIT_METHOD_SIGNAL ; 
 int /*<<< orphan*/  WAIT_METHOD_TIMED ; 
 int /*<<< orphan*/  application_help_message ; 
 int /*<<< orphan*/  cmdline_commands ; 
 int /*<<< orphan*/  cmdline_commands_size ; 
 int /*<<< orphan*/  default_signal_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  initial_map ; 
 int /*<<< orphan*/  initial_map_size ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*,char*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, RASPIVIDYUV_STATE *state)
{
   // Parse the command line arguments.
   // We are looking for --<something> or -<abbreviation of something>

   int valid = 1;
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
      case CommandTimeout: // Time to run viewfinder/capture
      {
         if (FUNC8(argv[i + 1], "%d", &state->timeout) == 1)
         {
            // Ensure that if previously selected a waitMethod we don't overwrite it
            if (state->timeout == 0 && state->waitMethod == WAIT_METHOD_NONE)
               state->waitMethod = WAIT_METHOD_FOREVER;

            i++;
         }
         else
            valid = 0;
         break;
      }

      case CommandDemoMode: // Run in demo mode - no capture
      {
         // Demo mode might have a timing parameter
         // so check if a) we have another parameter, b) its not the start of the next option
         if (i + 1 < argc  && argv[i+1][0] != '-')
         {
            if (FUNC8(argv[i + 1], "%u", &state->demoInterval) == 1)
            {
               // TODO : What limits do we need for timeout?
               if (state->demoInterval == 0)
                  state->demoInterval = 250; // ms

               state->demoMode = 1;
               i++;
            }
            else
               valid = 0;
         }
         else
         {
            state->demoMode = 1;
         }

         break;
      }

      case CommandFramerate: // fps to record
      {
         if (FUNC8(argv[i + 1], "%u", &state->framerate) == 1)
         {
            // TODO : What limits do we need for fps 1 - 30 - 120??
            i++;
         }
         else
            valid = 0;
         break;
      }

      case CommandTimed:
      {
         if (FUNC8(argv[i + 1], "%u,%u", &state->onTime, &state->offTime) == 2)
         {
            i++;

            if (state->onTime < 1000)
               state->onTime = 1000;

            if (state->offTime < 1000)
               state->offTime = 1000;

            state->waitMethod = WAIT_METHOD_TIMED;

            if (state->timeout == -1)
               state->timeout = 0;
         }
         else
            valid = 0;
         break;
      }

      case CommandKeypress:
         state->waitMethod = WAIT_METHOD_KEYPRESS;

         if (state->timeout == -1)
            state->timeout = 0;

         break;

      case CommandSignal:
         state->waitMethod = WAIT_METHOD_SIGNAL;
         // Reenable the signal
         FUNC7(SIGUSR1, default_signal_handler);

         if (state->timeout == -1)
            state->timeout = 0;

         break;

      case CommandInitialState:
      {
         state->bCapturing = FUNC4(argv[i + 1], initial_map, initial_map_size);

         if( state->bCapturing == -1)
            state->bCapturing = 0;

         i++;
         break;
      }

      case CommandOnlyLuma:
         if (state->useRGB)
         {
            FUNC0(stderr, "--luma and --rgb are mutually exclusive\n");
            valid = 0;
         }
         state->onlyLuma = 1;
         break;

      case CommandUseRGB: // display lots of data during run
         if (state->onlyLuma)
         {
            FUNC0(stderr, "--luma and --rgb are mutually exclusive\n");
            valid = 0;
         }
         state->useRGB = 1;
         break;

      case CommandSavePTS:  // output filename
      {
         state->save_pts = 1;
         int len = FUNC9(argv[i + 1]);
         if (len)
         {
            state->pts_filename = FUNC1(len + 1);
            FUNC11(state->pts_filename);
            if (state->pts_filename)
               FUNC10(state->pts_filename, argv[i + 1], len+1);
            i++;
         }
         else
            valid = 0;
         break;
      }

      case CommandNetListen:
      {
         state->netListen = true;

         break;
      }

      default:
      {
         // Try parsing for any image specific parameters
         // result indicates how many parameters were used up, 0,1,2
         // but we adjust by -1 as we have used one already
         const char *second_arg = (i + 1 < argc) ? argv[i + 1] : NULL;
         int parms_used = (FUNC2(&state->camera_parameters, &argv[i][1], second_arg));

         // Still unused, try common settings
         if (!parms_used)
            parms_used = FUNC5(&state->common_settings, &argv[i][1], second_arg, &application_help_message);

         // Still unused, try preview options
         if (!parms_used)
            parms_used = FUNC6(&state->preview_parameters, &argv[i][1], second_arg);

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