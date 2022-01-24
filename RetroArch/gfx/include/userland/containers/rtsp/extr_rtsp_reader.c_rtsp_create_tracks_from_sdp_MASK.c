#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* priv; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_22__ {TYPE_4__* priv; int /*<<< orphan*/  tracks_num; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_20__ {TYPE_3__* module; } ;
struct TYPE_19__ {int /*<<< orphan*/  media_item; } ;
struct TYPE_18__ {TYPE_1__* module; } ;
struct TYPE_17__ {char* control_uri; } ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  attribute_name_delimiter_fn ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_6__*,char*,TYPE_5__**) ; 
 scalar_t__ FUNC3 (TYPE_6__*,char*,char*,char**) ; 
 char* FUNC4 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_5__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_6__*,TYPE_5__*,char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC9( VC_CONTAINER_T *p_ctx,
      char *sdp_buffer,
      char *base_uri )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_TRACK_T *track = NULL;
   char *session_base_uri = base_uri;
   char *ptr;
   char *next_line_ptr;
   char *attribute;

   for (ptr = sdp_buffer; status == VC_CONTAINER_SUCCESS && *ptr; ptr = next_line_ptr)
   {
      /* Find end of line */
      char field = *ptr;

      next_line_ptr = ptr;
      while (*next_line_ptr && *next_line_ptr != '\n')
         next_line_ptr++;

      /* Terminate line */
      if (*next_line_ptr)
         *next_line_ptr++ = '\0';

      /* The format of the line has to be "<field>=<value>" where <field> is a single
       * character. Ignore anything else. */
      if (ptr[1] != '=')
         continue;
      ptr = FUNC7(ptr + 2);

      switch (field)
      {
      case 'm':
         /* Start of media item */
         if (track)
         {
            /* Finish previous track */
            status = FUNC1(p_ctx, track);
            track = NULL;
            p_ctx->priv->module->media_item++;
            if (status != VC_CONTAINER_SUCCESS)
               break;
         }

         status = FUNC2(p_ctx, ptr, &track);
         break;
      case 'a':   /* Attribute (either session or media level) */
         /* Attributes of the form "a=<name>:<value>" */
         attribute = FUNC4(&ptr, attribute_name_delimiter_fn, NULL);

         if (track)
         {
            /* Media level attribute */

            /* Look for known attributes */
            if (FUNC8(attribute, "rtpmap") == 0)
               status = FUNC6(p_ctx, track, ptr);
            else if (FUNC8(attribute, "fmtp") == 0)
               status = FUNC5(p_ctx, track, ptr);
            else if (FUNC8(attribute, "control") == 0)
            {
               char **track_control_uri = &track->priv->module->control_uri;

               if (*track_control_uri)
               {
                  FUNC0(*track_control_uri);
                  *track_control_uri = NULL;
               }
               status = FUNC3(p_ctx, ptr, session_base_uri, track_control_uri);
            }
            /* Any other attributes are ignored */
         } else {
            /* Session level attribute */
            if (FUNC8(attribute, "control") == 0)
            {
               /* Only need to change the session_base_uri if it differs from the base URI */
               ptr = FUNC7(ptr);
               if (session_base_uri != base_uri)
               {
                  FUNC0(session_base_uri);
                  session_base_uri = base_uri;
               }
               if (FUNC8(ptr, base_uri) != 0)
                  status = FUNC3(p_ctx, ptr, base_uri, &session_base_uri);
            }
         }
         break;
      default:    /* Ignore any other field names */
         ;
      }
   }

   if (session_base_uri && session_base_uri != base_uri)
      FUNC0(session_base_uri);

   /* Having no media fields is an error, since there will be nothing to play back */
   if (status == VC_CONTAINER_SUCCESS)
   {
      if (!p_ctx->tracks_num)
         status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      else if (track)
      {
         /* Finish final track */
         status = FUNC1(p_ctx, track);
         p_ctx->priv->module->media_item++;
      }
   }

   return status;
}