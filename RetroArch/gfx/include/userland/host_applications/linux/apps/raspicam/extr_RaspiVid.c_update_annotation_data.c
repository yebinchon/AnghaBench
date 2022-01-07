
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enable_annotate; char* annotate_string; int annotate_y; int annotate_x; int annotate_justify; int annotate_bg_colour; int annotate_text_colour; int annotate_text_size; } ;
struct TYPE_5__ {scalar_t__ gps; } ;
struct TYPE_7__ {int bitrate; TYPE_2__ camera_parameters; int camera_component; int level; int profile; int intraperiod; int framerate; int intra_refresh_type; TYPE_1__ common_settings; } ;
typedef TYPE_3__ RASPIVID_STATE ;


 int ANNOTATE_APP_TEXT ;
 int asprintf (char**,char*,int,int ,char const*,int ,char*,char*) ;
 int free (char*) ;
 int intra_refresh_map ;
 int intra_refresh_map_size ;
 int level_map ;
 int level_map_size ;
 int profile_map ;
 int profile_map_size ;
 char* raspi_gps_location_string () ;
 int raspicamcontrol_set_annotate (int ,int,char*,int ,int ,int ,int ,int ,int ) ;
 char* raspicli_unmap_xref (int ,int ,int ) ;

__attribute__((used)) static void update_annotation_data(RASPIVID_STATE *state)
{

   if (state->camera_parameters.enable_annotate & ANNOTATE_APP_TEXT)
   {
      char *text;

      if (state->common_settings.gps)
      {
         text = raspi_gps_location_string();
      }
      else
      {
         const char *refresh = raspicli_unmap_xref(state->intra_refresh_type, intra_refresh_map, intra_refresh_map_size);

         asprintf(&text, "%dk,%df,%s,%d,%s,%s",
                  state->bitrate / 1000, state->framerate,
                  refresh ? refresh : "(none)",
                  state->intraperiod,
                  raspicli_unmap_xref(state->profile, profile_map, profile_map_size),
                  raspicli_unmap_xref(state->level, level_map, level_map_size));
      }

      raspicamcontrol_set_annotate(state->camera_component, state->camera_parameters.enable_annotate, text,
                                   state->camera_parameters.annotate_text_size,
                                   state->camera_parameters.annotate_text_colour,
                                   state->camera_parameters.annotate_bg_colour,
                                   state->camera_parameters.annotate_justify,
                                   state->camera_parameters.annotate_x,
                                   state->camera_parameters.annotate_y
                                  );

      free(text);
   }
   else
   {
      raspicamcontrol_set_annotate(state->camera_component, state->camera_parameters.enable_annotate, state->camera_parameters.annotate_string,
                                   state->camera_parameters.annotate_text_size,
                                   state->camera_parameters.annotate_text_colour,
                                   state->camera_parameters.annotate_bg_colour,
                                   state->camera_parameters.annotate_justify,
                                   state->camera_parameters.annotate_x,
                                   state->camera_parameters.annotate_y
                                  );
   }
}
