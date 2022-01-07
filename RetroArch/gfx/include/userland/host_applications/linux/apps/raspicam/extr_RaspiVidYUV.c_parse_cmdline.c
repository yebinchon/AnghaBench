
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timeout; int demoInterval; int demoMode; int onTime; int offTime; int bCapturing; int useRGB; int onlyLuma; int save_pts; int netListen; int preview_parameters; int common_settings; int camera_parameters; int pts_filename; int waitMethod; int framerate; } ;
typedef TYPE_1__ RASPIVIDYUV_STATE ;
 int SIGUSR1 ;
 int WAIT_METHOD_FOREVER ;
 int WAIT_METHOD_KEYPRESS ;
 int WAIT_METHOD_NONE ;
 int WAIT_METHOD_SIGNAL ;
 int WAIT_METHOD_TIMED ;
 int application_help_message ;
 int cmdline_commands ;
 int cmdline_commands_size ;
 int default_signal_handler ;
 int fprintf (int ,char*,...) ;
 int initial_map ;
 int initial_map_size ;
 int malloc (int) ;
 int raspicamcontrol_parse_cmdline (int *,char const*,char const*) ;
 int raspicli_get_command_id (int ,int ,char const*,int*) ;
 int raspicli_map_xref (char const*,int ,int ) ;
 int raspicommonsettings_parse_cmdline (int *,char const*,char const*,int *) ;
 int raspipreview_parse_cmdline (int *,char const*,char const*) ;
 int signal (int ,int ) ;
 int sscanf (char const*,char*,int*,...) ;
 int stderr ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int) ;
 int vcos_assert (int ) ;

__attribute__((used)) static int parse_cmdline(int argc, const char **argv, RASPIVIDYUV_STATE *state)
{



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


      valid = 1;

      command_id = raspicli_get_command_id(cmdline_commands, cmdline_commands_size, &argv[i][1], &num_parameters);


      if (command_id != -1 && num_parameters > 0 && (i + 1 >= argc) )
         continue;


      switch (command_id)
      {
      case 129:
      {
         if (sscanf(argv[i + 1], "%d", &state->timeout) == 1)
         {

            if (state->timeout == 0 && state->waitMethod == WAIT_METHOD_NONE)
               state->waitMethod = WAIT_METHOD_FOREVER;

            i++;
         }
         else
            valid = 0;
         break;
      }

      case 138:
      {


         if (i + 1 < argc && argv[i+1][0] != '-')
         {
            if (sscanf(argv[i + 1], "%u", &state->demoInterval) == 1)
            {

               if (state->demoInterval == 0)
                  state->demoInterval = 250;

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

      case 137:
      {
         if (sscanf(argv[i + 1], "%u", &state->framerate) == 1)
         {

            i++;
         }
         else
            valid = 0;
         break;
      }

      case 130:
      {
         if (sscanf(argv[i + 1], "%u,%u", &state->onTime, &state->offTime) == 2)
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

      case 135:
         state->waitMethod = WAIT_METHOD_KEYPRESS;

         if (state->timeout == -1)
            state->timeout = 0;

         break;

      case 131:
         state->waitMethod = WAIT_METHOD_SIGNAL;

         signal(SIGUSR1, default_signal_handler);

         if (state->timeout == -1)
            state->timeout = 0;

         break;

      case 136:
      {
         state->bCapturing = raspicli_map_xref(argv[i + 1], initial_map, initial_map_size);

         if( state->bCapturing == -1)
            state->bCapturing = 0;

         i++;
         break;
      }

      case 133:
         if (state->useRGB)
         {
            fprintf(stderr, "--luma and --rgb are mutually exclusive\n");
            valid = 0;
         }
         state->onlyLuma = 1;
         break;

      case 128:
         if (state->onlyLuma)
         {
            fprintf(stderr, "--luma and --rgb are mutually exclusive\n");
            valid = 0;
         }
         state->useRGB = 1;
         break;

      case 132:
      {
         state->save_pts = 1;
         int len = strlen(argv[i + 1]);
         if (len)
         {
            state->pts_filename = malloc(len + 1);
            vcos_assert(state->pts_filename);
            if (state->pts_filename)
               strncpy(state->pts_filename, argv[i + 1], len+1);
            i++;
         }
         else
            valid = 0;
         break;
      }

      case 134:
      {
         state->netListen = 1;

         break;
      }

      default:
      {



         const char *second_arg = (i + 1 < argc) ? argv[i + 1] : ((void*)0);
         int parms_used = (raspicamcontrol_parse_cmdline(&state->camera_parameters, &argv[i][1], second_arg));


         if (!parms_used)
            parms_used = raspicommonsettings_parse_cmdline(&state->common_settings, &argv[i][1], second_arg, &application_help_message);


         if (!parms_used)
            parms_used = raspipreview_parse_cmdline(&state->preview_parameters, &argv[i][1], second_arg);


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
      fprintf(stderr, "Invalid command line option (%s)\n", argv[i-1]);
      return 1;
   }

   return 0;
}
