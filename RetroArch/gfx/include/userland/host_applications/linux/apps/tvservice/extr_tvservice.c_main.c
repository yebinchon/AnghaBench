
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint32_t ;
typedef int int32_t ;
typedef int id ;
typedef int VCHI_INSTANCE_T ;
typedef int VCHI_CONNECTION_T ;
struct TYPE_4__ {char* vendor; char* monitor_name; } ;
typedef TYPE_1__ TV_DEVICE_ID_T ;
typedef int SDTV_MODE_T ;
typedef int SDTV_ASPECT_T ;
typedef int HDMI_RES_GROUP_T ;


 int HDMI_3D_FORMAT_FRAME_PACKING ;
 int HDMI_3D_FORMAT_FRAME_SEQUENTIAL ;
 int HDMI_3D_FORMAT_NONE ;
 int HDMI_3D_FORMAT_SBS_HALF ;
 int HDMI_3D_FORMAT_TB_HALF ;
 char HDMI_MODE_DVI ;
 char HDMI_MODE_HDMI ;
 int HDMI_PIXEL_CLOCK_TYPE_NTSC ;
 int HDMI_PIXEL_CLOCK_TYPE_PAL ;
 int HDMI_PROPERTY_3D_STRUCTURE ;
 int HDMI_PROPERTY_PIXEL_CLOCK_TYPE ;
 int HDMI_RES_GROUP_CEA ;
 int HDMI_RES_GROUP_DMT ;
 int HDMI_RES_GROUP_INVALID ;
 int LOG_ERR (char*,...) ;
 int LOG_STD (char*,...) ;
 char MAX_MODE_ID ;
 int OPTSTRING_LEN ;
 int SDTV_ASPECT_14_9 ;
 int SDTV_ASPECT_16_9 ;
 int SDTV_ASPECT_4_3 ;
 int SDTV_ASPECT_UNKNOWN ;
 int SDTV_MODE_NTSC ;
 int SDTV_MODE_NTSC_J ;
 int SDTV_MODE_PAL ;
 int SDTV_MODE_PAL_M ;
 int atoi (char*) ;
 int create_optstring (char*) ;
 scalar_t__ dump_edid (char*) ;
 int exit (int) ;
 scalar_t__ get_audiosup () ;
 scalar_t__ get_modes (int ,int) ;
 scalar_t__ get_status () ;
 int getopt_long_only (int,char**,char*,int ,int *) ;
 int long_opts ;
 int memset (TYPE_1__*,int ,int) ;
 char* optarg ;
 int optind ;
 scalar_t__ power_off () ;
 scalar_t__ power_on_explicit (int ,char,char) ;
 scalar_t__ power_on_preferred () ;
 scalar_t__ power_on_sdtv (int ,int ,int) ;
 int quit_event ;
 scalar_t__ set_property (int ,int ,int ) ;
 scalar_t__ show_info (int) ;
 int show_usage () ;
 int sscanf (char*,char*,char*,char*,char*) ;
 scalar_t__ start_monitor () ;
 scalar_t__ vc_tv_get_device_id (TYPE_1__*) ;
 int vc_vchi_tv_init (int ,int **,int) ;
 int vc_vchi_tv_stop () ;
 int vchi_connect (int *,int ,int ) ;
 int vchi_disconnect (int ) ;
 int vchi_initialise (int *) ;
 int vcos_event_delete (int *) ;
 int vcos_event_wait (int *) ;
 int vcos_init () ;
 int vcos_strcasecmp (char*,char*) ;

int main( int argc, char **argv )
{
   int32_t ret;
   char optstring[OPTSTRING_LEN];
   int opt;
   int opt_preferred = 0;
   int opt_explicit = 0;
   int opt_ntsc = 0;
   int opt_sdtvon = 0;
   int opt_off = 0;
   int opt_modes = 0;
   int opt_monitor = 0;
   int opt_status = 0;
   int opt_audiosup = 0;
   int opt_dumpedid = 0;
   int opt_showinfo = 0;
   int opt_3d = 0;
   int opt_json = 0;
   int opt_name = 0;

   char *dumpedid_filename = ((void*)0);
   VCHI_INSTANCE_T vchi_instance;
   VCHI_CONNECTION_T *vchi_connection;
   HDMI_RES_GROUP_T power_on_explicit_group = HDMI_RES_GROUP_INVALID;
   uint32_t power_on_explicit_mode;
   uint32_t power_on_explicit_drive = HDMI_MODE_HDMI;
   HDMI_RES_GROUP_T get_modes_group = HDMI_RES_GROUP_INVALID;
   SDTV_MODE_T sdtvon_mode = SDTV_MODE_NTSC;
   SDTV_ASPECT_T sdtvon_aspect = SDTV_ASPECT_UNKNOWN;
   int sdtvon_progressive = 0;


   vcos_init();


   create_optstring( optstring );


   while (( opt = getopt_long_only( argc, argv, optstring, long_opts,
                                    ((void*)0) )) != -1 )
   {
      switch ( opt )
      {
         case 0:
         {

            break;
         }
         case 131:
         {
            opt_preferred = 1;
            break;
         }
         case 139:
         {
            char group_str[32], drive_str[32];


            int s = sscanf( optarg, "%31s %u %31s", group_str, &power_on_explicit_mode, drive_str );
            if ( s != 2 && s != 3 )
            {
               LOG_ERR( "Invalid arguments '%s'", optarg );
               goto err_out;
            }


            if ( vcos_strcasecmp( "CEA", group_str ) == 0 )
            {
               power_on_explicit_group = HDMI_RES_GROUP_CEA;
            }
            else if ( vcos_strcasecmp( "DMT", group_str ) == 0 )
            {
               power_on_explicit_group = HDMI_RES_GROUP_DMT;
            }
            else if ( vcos_strcasecmp( "CEA_3D", group_str ) == 0 ||
                      vcos_strcasecmp( "CEA_3D_SBS", group_str ) == 0)
            {
               power_on_explicit_group = HDMI_RES_GROUP_CEA;
               opt_3d = 1;
            }
            else if ( vcos_strcasecmp( "CEA_3D_TB", group_str ) == 0 )
            {
               power_on_explicit_group = HDMI_RES_GROUP_CEA;
               opt_3d = 2;
            }
            else if ( vcos_strcasecmp( "CEA_3D_FP", group_str ) == 0 )
            {
               power_on_explicit_group = HDMI_RES_GROUP_CEA;
               opt_3d = 3;
            }
            else if ( vcos_strcasecmp( "CEA_3D_FS", group_str ) == 0 )
            {
               power_on_explicit_group = HDMI_RES_GROUP_CEA;
               opt_3d = 4;
            }
            else
            {
               LOG_ERR( "Invalid group '%s'", group_str );
               goto err_out;
            }
            if (s==3)
            {
               if (vcos_strcasecmp( "HDMI", drive_str ) == 0 )
               {
                  power_on_explicit_drive = HDMI_MODE_HDMI;
               }
               else if (vcos_strcasecmp( "DVI", drive_str ) == 0 )
               {
                  power_on_explicit_drive = HDMI_MODE_DVI;
               }
               else
               {
                  LOG_ERR( "Invalid drive '%s'", drive_str );
                  goto err_out;
               }
            }

            if ( power_on_explicit_mode > MAX_MODE_ID )
            {
               LOG_ERR( "Invalid mode '%u'", power_on_explicit_mode );
               goto err_out;
            }

            opt_explicit = 1;
            break;
         }
         case 133:
         {
            opt_ntsc = 1;
            break;
         }
         case 130:
         {
            char mode_str[32], aspect_str[32], progressive_str[32];
            int s = sscanf( optarg, "%s %s %s", mode_str, aspect_str, progressive_str );
            if ( s != 2 && s != 3 )
            {
               LOG_ERR( "Invalid arguments '%s'", optarg );
               goto err_out;
            }


            if ( vcos_strcasecmp( "NTSC", mode_str ) == 0 )
            {
               sdtvon_mode = SDTV_MODE_NTSC;
            }
            else if ( vcos_strcasecmp( "NTSC_J", mode_str ) == 0 )
            {
               sdtvon_mode = SDTV_MODE_NTSC_J;
            }
            else if ( vcos_strcasecmp( "PAL", mode_str ) == 0 )
            {
               sdtvon_mode = SDTV_MODE_PAL;
            }
            else if ( vcos_strcasecmp( "PAL_M", mode_str ) == 0 )
            {
               sdtvon_mode = SDTV_MODE_PAL_M;
            }
            else
            {
               LOG_ERR( "Invalid mode '%s'", mode_str );
               goto err_out;
            }

            if ( vcos_strcasecmp( "4:3", aspect_str ) == 0 )
            {
               sdtvon_aspect = SDTV_ASPECT_4_3;
            }
            else if ( vcos_strcasecmp( "14:9", aspect_str ) == 0 )
            {
               sdtvon_aspect = SDTV_ASPECT_14_9;
            }
            else if ( vcos_strcasecmp( "16:9", aspect_str ) == 0 )
            {
               sdtvon_aspect = SDTV_ASPECT_16_9;
            }

            if (s == 3 && vcos_strcasecmp( "P", progressive_str ) == 0 )
            {
              sdtvon_progressive = 1;
            }
            opt_sdtvon = 1;
            break;
         }
         case 132:
         {
            opt_off = 1;
            break;
         }
         case 136:
         {
            if ( vcos_strcasecmp( "CEA", optarg ) == 0 )
            {
               get_modes_group = HDMI_RES_GROUP_CEA;
            }
            else if ( vcos_strcasecmp( "DMT", optarg ) == 0 )
            {
               get_modes_group = HDMI_RES_GROUP_DMT;
            }
            else
            {
               LOG_ERR( "Invalid group '%s'", optarg );
               goto err_out;
            }

            opt_modes = 1;
            break;
         }
         case 135:
         {
            opt_monitor = 1;
            break;
         }
         case 128:
         {
            opt_status = 1;
            break;
         }
         case 141:
         {
            opt_audiosup = 1;
            break;
         }
         case 140:
         {
            opt_dumpedid = 1;
            dumpedid_filename = optarg;
            break;
         }
         case 129:
         {
            opt_showinfo = atoi(optarg)+1;
            break;
         }
         case 137:
         {
            opt_json = 1;
            break;
         }
         case 134:
         {
            opt_name = 1;
            break;
         }
         default:
         {
            LOG_ERR( "Unrecognized option '%d'\n", opt );
            goto err_usage;
         }
         case '?':
         case 138:
         {
            goto err_usage;
         }
      }
   }

   argc -= optind;
   argv += optind;

   if (( optind == 1 ) || ( argc > 0 ))
   {
      if ( argc > 0 )
      {
         LOG_ERR( "Unrecognized argument -- '%s'", *argv );
      }

      goto err_usage;
   }

   if (( opt_preferred + opt_explicit + opt_sdtvon > 1 ))
   {
      LOG_ERR( "Conflicting power on options" );
      goto err_usage;
   }

   if ((( opt_preferred == 1 ) || ( opt_explicit == 1 ) || ( opt_sdtvon == 1)) && ( opt_off == 1 ))
   {
      LOG_ERR( "Cannot power on and power off simultaneously" );
      goto err_out;
   }


   ret = vchi_initialise( &vchi_instance );
   if ( ret != 0 )
   {
      LOG_ERR( "Failed to initialize VCHI (ret=%d)", ret );
      goto err_out;
   }

   ret = vchi_connect( ((void*)0), 0, vchi_instance );
   if ( ret != 0)
   {
      LOG_ERR( "Failed to create VCHI connection (ret=%d)", ret );
      goto err_out;
   }




   vc_vchi_tv_init( vchi_instance, &vchi_connection, 1 );

   if ( opt_monitor == 1 )
   {
      LOG_STD( "Starting to monitor for HDMI events" );

      if ( start_monitor() != 0 )
      {
         goto err_stop_service;
      }
   }

   if ( opt_modes == 1 )
   {
      if ( get_modes( get_modes_group, opt_json ) != 0 )
      {
         goto err_stop_service;
      }
   }

   if ( opt_preferred == 1 )
   {
      if(set_property( HDMI_PROPERTY_3D_STRUCTURE, HDMI_3D_FORMAT_NONE, 0) != 0)
      {
         goto err_stop_service;
      }
      if ( power_on_preferred() != 0 )
      {
         goto err_stop_service;
      }
   }
   else if ( opt_explicit == 1 )
   {

      if(opt_3d == 0 && set_property( HDMI_PROPERTY_3D_STRUCTURE, HDMI_3D_FORMAT_NONE, 0) != 0)
      {
         goto err_stop_service;
      }
      else if(opt_3d == 1 && set_property( HDMI_PROPERTY_3D_STRUCTURE, HDMI_3D_FORMAT_SBS_HALF, 0) != 0)
      {
         goto err_stop_service;
      }
      else if(opt_3d == 2 && set_property( HDMI_PROPERTY_3D_STRUCTURE, HDMI_3D_FORMAT_TB_HALF, 0) != 0)
      {
         goto err_stop_service;
      }
      else if(opt_3d == 3 && set_property( HDMI_PROPERTY_3D_STRUCTURE, HDMI_3D_FORMAT_FRAME_PACKING, 0) != 0)
      {
         goto err_stop_service;
      }
      else if(opt_3d == 4 && set_property( HDMI_PROPERTY_3D_STRUCTURE, HDMI_3D_FORMAT_FRAME_SEQUENTIAL, 0) != 0)
      {
         goto err_stop_service;
      }
      if (set_property( HDMI_PROPERTY_PIXEL_CLOCK_TYPE, opt_ntsc ? HDMI_PIXEL_CLOCK_TYPE_NTSC : HDMI_PIXEL_CLOCK_TYPE_PAL, 0) != 0)
      {
         goto err_stop_service;
      }
      if ( power_on_explicit( power_on_explicit_group,
                              power_on_explicit_mode, power_on_explicit_drive ) != 0 )
      {
         goto err_stop_service;
      }
   }
   else if ( opt_sdtvon == 1 )
   {
      if ( power_on_sdtv( sdtvon_mode,
                              sdtvon_aspect, sdtvon_progressive ) != 0 )
      {
         goto err_stop_service;
      }
   }
   else if (opt_off == 1 )
   {
      if ( power_off() != 0 )
      {
         goto err_stop_service;
      }
   }

   if ( opt_status == 1 )
   {
      if ( get_status() != 0 )
      {
         goto err_stop_service;
      }
   }

   if ( opt_audiosup == 1 )
   {
      if ( get_audiosup() != 0 )
      {
         goto err_stop_service;
      }
   }

   if ( opt_dumpedid == 1 )
   {
      if ( dump_edid(dumpedid_filename) != 0 )
      {
         goto err_stop_service;
      }
   }

   if ( opt_showinfo )
   {
      if ( show_info(opt_showinfo-1) != 0 )
      {
         goto err_stop_service;
      }
   }

   if ( opt_name == 1 )
   {
      TV_DEVICE_ID_T id;
      memset(&id, 0, sizeof(id));
      if(vc_tv_get_device_id(&id) == 0) {
         if(id.vendor[0] == '\0' || id.monitor_name[0] == '\0') {
            LOG_ERR( "No device present" );
         } else {
            LOG_STD( "device_name=%s-%s", id.vendor, id.monitor_name);
         }
      } else {
         LOG_ERR( "Failed to obtain device name" );
      }
   }

   if ( opt_monitor == 1 )
   {

      vcos_event_wait( &quit_event );

      vcos_event_delete( &quit_event );
   }

err_stop_service:



   vc_vchi_tv_stop();


   vchi_disconnect( vchi_instance );

   exit( 0 );

err_usage:
   show_usage();

err_out:
   exit( 1 );
}
