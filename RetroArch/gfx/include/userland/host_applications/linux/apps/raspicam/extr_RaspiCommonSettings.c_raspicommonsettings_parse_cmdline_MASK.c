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
struct TYPE_3__ {int verbose; int gps; int /*<<< orphan*/  sensor_mode; int /*<<< orphan*/  cameraNum; int /*<<< orphan*/  filename; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ RASPICOMMONSETTINGS_PARAMETERS ;

/* Variables and functions */
#define  CommandCamSelect 135 
#define  CommandGpsd 134 
#define  CommandHeight 133 
#define  CommandHelp 132 
#define  CommandOutput 131 
#define  CommandSensorMode 130 
#define  CommandVerbose 129 
#define  CommandWidth 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmdline_commands ; 
 int /*<<< orphan*/  cmdline_commands_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void (*) (char*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int*) ; 
 int FUNC8 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char const*,char) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(RASPICOMMONSETTINGS_PARAMETERS *state, const char *arg1, const char *arg2, void (*app_help)(char*))
{
   int command_id, used = 0, num_parameters;

   if (!arg1)
      return 0;

   command_id = FUNC7(cmdline_commands, cmdline_commands_size, arg1, &num_parameters);

   // If invalid command, or we are missing a parameter, drop out
   if (command_id==-1 || (command_id != -1 && num_parameters > 0 && arg2 == NULL))
      return 0;

   switch (command_id)
   {
   case CommandHelp:
   {
      FUNC1(FUNC0(FUNC4()), app_help);
      FUNC2(0);
      break;
   }
   case CommandWidth: // Width > 0
      if (FUNC8(arg2, "%u", &state->width) == 1)
         used = 2;
      break;

   case CommandHeight: // Height > 0
      if (FUNC8(arg2, "%u", &state->height) == 1)
         used = 2;
      break;

   case CommandOutput:  // output filename
   {
      int len = FUNC10(arg2);
      if (len)
      {
         // Ensure that any %<char> is either %% or %d.
         const char *percent = arg2;

         while(*percent && (percent=FUNC9(percent, '%')) != NULL)
         {
            int digits=0;
            percent++;
            while(FUNC5(*percent))
            {
               percent++;
               digits++;
            }
            if(!((*percent == '%' && !digits) || *percent == 'd'))
            {
               used = 0;
               FUNC3(stderr, "Filename contains %% characters, but not %%d or %%%% - sorry, will fail\n");
               break;
            }
            percent++;
         }

         state->filename = FUNC6(len + 10); // leave enough space for any timelapse generated changes to filename
         FUNC12(state->filename);
         if (state->filename)
            FUNC11(state->filename, arg2, len+1);
         used = 2;
      }
      else
         used = 0;
      break;
   }

   case CommandVerbose: // display lots of data during run
      state->verbose = 1;
      used = 1;
      break;

   case CommandCamSelect:  //Select camera input port
   {
      if (FUNC8(arg2, "%u", &state->cameraNum) == 1)
         used = 2;
      break;
   }

   case CommandSensorMode:
   {
      if (FUNC8(arg2, "%u", &state->sensor_mode) == 1)
         used = 2;
      break;
   }

   case CommandGpsd:
      state->gps = 1;
      used = 1;
      break;
   }

   return used;
}