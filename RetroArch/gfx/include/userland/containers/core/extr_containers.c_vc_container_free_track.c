
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
struct TYPE_5__ {TYPE_2__* drmdata; TYPE_2__* extradata; } ;


 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int free (TYPE_2__*) ;

void vc_container_free_track( VC_CONTAINER_T *context, VC_CONTAINER_TRACK_T *p_track )
{
   VC_CONTAINER_PARAM_UNUSED(context);
   if(p_track)
   {
      if(p_track->priv->extradata) free(p_track->priv->extradata);
      if(p_track->priv->drmdata) free(p_track->priv->drmdata);
      free(p_track);
   }
}
