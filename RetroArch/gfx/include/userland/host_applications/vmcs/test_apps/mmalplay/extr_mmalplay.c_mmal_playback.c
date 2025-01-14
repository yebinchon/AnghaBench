
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int render_layer; int output_uri; } ;
struct TYPE_8__ {int status; int name; int lock; int * ctx; int uri; TYPE_1__ options; } ;
struct TYPE_7__ {int disable_playback; int render_layer; int output_uri; } ;
typedef int MMAL_STATUS_T ;
typedef int MMALPLAY_T ;
typedef TYPE_2__ MMALPLAY_OPTIONS_T ;
typedef TYPE_3__ FILE_PLAY_INFO_T ;


 int LOG_TRACE (char*,int ,int ) ;
 int * mmalplay_create (int ,TYPE_2__*,int *) ;
 int mmalplay_destroy (int *) ;
 int mmalplay_play (int *) ;
 TYPE_2__ options ;
 scalar_t__ unclean_exit ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void *mmal_playback(void *id)
{
   FILE_PLAY_INFO_T *play_info = id;
   MMALPLAY_OPTIONS_T opts;
   MMAL_STATUS_T status;
   MMALPLAY_T *ctx;


   opts = options;
   opts.output_uri = play_info->options.output_uri;
   opts.render_layer = play_info->options.render_layer;

   vcos_mutex_lock(&play_info->lock);
   ctx = mmalplay_create(play_info->uri, &opts, &status);
   play_info->ctx = ctx;
   vcos_mutex_unlock(&play_info->lock);
   if (!ctx)
      goto end;

   if (!opts.disable_playback)
      status = mmalplay_play(ctx);

   if (unclean_exit)
      goto end;

   vcos_mutex_lock(&play_info->lock);
   if (ctx)
   {


      mmalplay_destroy(ctx);
   }
   play_info->ctx = 0;
   vcos_mutex_unlock(&play_info->lock);

 end:
   LOG_TRACE("Thread %s terminating, result %d", play_info->name, status);
   play_info->status = status;
   return ((void*)0);
}
