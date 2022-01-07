
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;


struct TYPE_23__ {TYPE_3__* priv; TYPE_11__* format; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_24__ {size_t tracks_num; TYPE_4__** tracks; TYPE_1__* priv; } ;
typedef TYPE_5__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_25__ {int extradata_size; } ;
typedef TYPE_6__ VC_CONTAINER_ES_FORMAT_T ;
struct TYPE_22__ {TYPE_2__* module; } ;
struct TYPE_21__ {char* uri; int io; } ;
struct TYPE_20__ {int uri; } ;
struct TYPE_19__ {int codec; } ;


 char* ES_SUFFIX ;
 scalar_t__ ES_SUFFIX_SIZE ;
 int LOG_DEBUG (TYPE_5__*,char*,char*) ;
 int LOG_ERROR (TYPE_5__*,char*,char*) ;
 size_t MAX_TRACKS ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 int VC_CONTAINER_IO_MODE_WRITE ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int snprintf (char*,scalar_t__,char*,char const*,size_t,char*) ;
 unsigned int strlen (char const*) ;
 TYPE_4__* vc_container_allocate_track (TYPE_5__*,scalar_t__) ;
 int vc_container_format_copy (TYPE_11__*,TYPE_6__*,int ) ;
 int vc_container_free_track (TYPE_5__*,TYPE_4__*) ;
 int vc_container_io_open (char*,int ,scalar_t__*) ;
 scalar_t__ vc_container_track_allocate_extradata (TYPE_5__*,TYPE_4__*,int ) ;
 char* vc_uri_path (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T simple_write_add_track( VC_CONTAINER_T *ctx,
   VC_CONTAINER_ES_FORMAT_T *format )
{
   VC_CONTAINER_TRACK_T *track = ((void*)0);
   VC_CONTAINER_STATUS_T status;
   const char *uri = vc_uri_path(ctx->priv->uri);
   unsigned int uri_size = strlen(uri);


   if (ctx->tracks_num >= MAX_TRACKS)
      return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;

   ctx->tracks[ctx->tracks_num] = track =
      vc_container_allocate_track(ctx, sizeof(VC_CONTAINER_TRACK_MODULE_T) +
         uri_size + ES_SUFFIX_SIZE + 1);
   if (!track)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   if (format->extradata_size)
   {
      status = vc_container_track_allocate_extradata(ctx, track, format->extradata_size);
      if (status != VC_CONTAINER_SUCCESS)
         goto error;
   }
   vc_container_format_copy(track->format, format, format->extradata_size);

   track->priv->module->uri = (char *)&track->priv->module[1];
   snprintf(track->priv->module->uri, uri_size + ES_SUFFIX_SIZE + 1,
      ES_SUFFIX, uri, ctx->tracks_num, (char *)&track->format->codec);

   LOG_DEBUG(ctx, "opening elementary stream: %s", track->priv->module->uri);
   track->priv->module->io = vc_container_io_open(track->priv->module->uri,
      VC_CONTAINER_IO_MODE_WRITE, &status);
   if (status != VC_CONTAINER_SUCCESS)
   {
      LOG_ERROR(ctx, "error opening elementary stream: %s",
         track->priv->module->uri);
      goto error;
   }

   ctx->tracks_num++;
   return VC_CONTAINER_SUCCESS;

 error:
   if (track)
      vc_container_free_track(ctx, track);
   return status;
}
