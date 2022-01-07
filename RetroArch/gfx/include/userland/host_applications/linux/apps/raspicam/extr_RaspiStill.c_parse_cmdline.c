
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {char const* format; int encoding; } ;
struct TYPE_15__ {int verbose; } ;
struct TYPE_11__ {int height; int width; int y; int x; } ;
struct TYPE_14__ {int opacity; TYPE_2__ previewWindow; } ;
struct TYPE_13__ {int verbose; int opacity; int preview_height; int preview_width; int preview_y; int preview_x; int height; int width; int y; int x; int gl_win_defined; } ;
struct TYPE_10__ {int quality; int height; int width; int enable; } ;
struct TYPE_12__ {int quality; int wantRAW; int frameStart; int datetime; int timestamp; int timeout; int demoInterval; int demoMode; int timelapse; int fullResPreview; int useGL; int glCapture; int burstCaptureMode; int restart_interval; TYPE_7__ common_settings; TYPE_5__ raspitex_state; TYPE_6__ preview_parameters; int camera_parameters; int frameNextMethod; int enableExifTags; int encoding; TYPE_1__ thumbnailConfig; int linkname; } ;
typedef TYPE_3__ RASPISTILL_STATE ;
 int FRAME_NEXT_FOREVER ;
 int FRAME_NEXT_IMMEDIATELY ;
 int FRAME_NEXT_KEYPRESS ;
 int FRAME_NEXT_SIGNAL ;
 int FRAME_NEXT_SINGLE ;
 int FRAME_NEXT_TIMELAPSE ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int application_help_message ;
 int cmdline_commands ;
 int cmdline_commands_size ;
 int default_signal_handler ;
 TYPE_9__* encoding_xref ;
 int encoding_xref_size ;
 int fprintf (int ,char*,...) ;
 int malloc (int) ;
 int raspicamcontrol_parse_cmdline (int *,char const*,char const*) ;
 int raspicli_get_command_id (int ,int ,char const*,int*) ;
 int raspicommonsettings_parse_cmdline (TYPE_7__*,char const*,char const*,int *) ;
 int raspipreview_parse_cmdline (TYPE_6__*,char const*,char const*) ;
 int raspitex_parse_cmdline (TYPE_5__*,char const*,char const*) ;
 int signal (int ,int ) ;
 int sscanf (char const*,char*,int*,...) ;
 int stderr ;
 int store_exif_tag (TYPE_3__*,char const*) ;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int) ;
 int vcos_assert (int ) ;

__attribute__((used)) static int parse_cmdline(int argc, const char **argv, RASPISTILL_STATE *state)
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
      case 135:
         if (sscanf(argv[i + 1], "%u", &state->quality) == 1)
         {
            if (state->quality > 100)
            {
               fprintf(stderr, "Setting max quality = 100\n");
               state->quality = 100;
            }
            i++;
         }
         else
            valid = 0;
         break;

      case 134:
         state->wantRAW = 1;
         break;

      case 136 :
      {
         int len = strlen(argv[i+1]);
         if (len)
         {
            state->linkname = malloc(len + 10);
            vcos_assert(state->linkname);
            if (state->linkname)
               strncpy(state->linkname, argv[i + 1], len+1);
            i++;
         }
         else
            valid = 0;
         break;

      }

      case 141:
      {
         if (sscanf(argv[i + 1], "%d", &state->frameStart) == 1)
         {
            i++;
         }
         else
            valid = 0;
         break;
      }

      case 145:
         state->datetime = 1;
         break;

      case 130:
         state->timestamp = 1;
         break;

      case 128:
      {
         if (sscanf(argv[i + 1], "%d", &state->timeout) == 1)
         {

            if (state->timeout == 0 && state->frameNextMethod == FRAME_NEXT_SINGLE)
               state->frameNextMethod = FRAME_NEXT_FOREVER;

            i++;
         }
         else
            valid = 0;
         break;
      }

      case 131 :
         if ( strcmp( argv[ i + 1 ], "none" ) == 0 )
         {
            state->thumbnailConfig.enable = 0;
         }
         else
         {
            sscanf(argv[i + 1], "%d:%d:%d",
                   &state->thumbnailConfig.width,
                   &state->thumbnailConfig.height,
                   &state->thumbnailConfig.quality);
         }
         i++;
         break;

      case 144:
      {


         if (i + 1 < argc && argv[i+1][0] != '-')
         {
            if (sscanf(argv[i + 1], "%u", &state->demoInterval) == 1)
            {

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

      case 143 :
      {
         int len = strlen(argv[i + 1]);
         valid = 0;

         if (len)
         {
            int j;
            for (j=0; j<encoding_xref_size; j++)
            {
               if (strcmp(encoding_xref[j].format, argv[i+1]) == 0)
               {
                  state->encoding = encoding_xref[j].encoding;
                  valid = 1;
                  i++;
                  break;
               }
            }
         }
         break;
      }

      case 142:
         if ( strcmp( argv[ i + 1 ], "none" ) == 0 )
         {
            state->enableExifTags = 0;
         }
         else
         {
            store_exif_tag(state, argv[i+1]);
         }
         i++;
         break;

      case 129:
         if (sscanf(argv[i + 1], "%u", &state->timelapse) != 1)
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

      case 140:
         state->fullResPreview = 1;
         break;

      case 137:
         state->frameNextMethod = FRAME_NEXT_KEYPRESS;

         if (state->timeout == -1)
            state->timeout = 0;

         break;

      case 132:
         state->frameNextMethod = FRAME_NEXT_SIGNAL;

         signal(SIGUSR1, default_signal_handler);
         signal(SIGUSR2, default_signal_handler);

         if (state->timeout == -1)
            state->timeout = 0;

         break;

      case 139:
         state->useGL = 1;
         break;

      case 138:
         state->glCapture = 1;
         break;

      case 146:
         state->burstCaptureMode=1;
         break;

      case 133:
      {
         if (sscanf(argv[i + 1], "%u", &state->restart_interval) == 1)
         {
            i++;
         }
         else
            valid = 0;
         break;
      }

      default:
      {



         const char *second_arg = (i + 1 < argc) ? argv[i + 1] : ((void*)0);
         int parms_used = raspicamcontrol_parse_cmdline(&state->camera_parameters, &argv[i][1], second_arg);


         if (!parms_used)
            parms_used = raspicommonsettings_parse_cmdline(&state->common_settings, &argv[i][1], second_arg, &application_help_message);


         if (!parms_used)
            parms_used = raspipreview_parse_cmdline(&state->preview_parameters, &argv[i][1], second_arg);


         if (!parms_used)
            parms_used = raspitex_parse_cmdline(&state->raspitex_state, &argv[i][1], second_arg);


         if (!parms_used)
            valid = 0;
         else
            i += parms_used - 1;

         break;
      }
      }
   }


   if (! state->raspitex_state.gl_win_defined)
   {
      state->raspitex_state.x = state->preview_parameters.previewWindow.x;
      state->raspitex_state.y = state->preview_parameters.previewWindow.y;
      state->raspitex_state.width = state->preview_parameters.previewWindow.width;
      state->raspitex_state.height = state->preview_parameters.previewWindow.height;
   }


   state->raspitex_state.preview_x = state->preview_parameters.previewWindow.x;
   state->raspitex_state.preview_y = state->preview_parameters.previewWindow.y;
   state->raspitex_state.preview_width = state->preview_parameters.previewWindow.width;
   state->raspitex_state.preview_height = state->preview_parameters.previewWindow.height;
   state->raspitex_state.opacity = state->preview_parameters.opacity;
   state->raspitex_state.verbose = state->common_settings.verbose;

   if (!valid)
   {
      fprintf(stderr, "Invalid command line option (%s)\n", argv[i-1]);
      return 1;
   }

   return 0;
}
