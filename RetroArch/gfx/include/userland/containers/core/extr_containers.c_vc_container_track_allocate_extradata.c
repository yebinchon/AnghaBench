
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; TYPE_1__* format; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {unsigned int extradata_size; scalar_t__ extradata; } ;
struct TYPE_5__ {scalar_t__ extradata; } ;


 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int VC_CONTAINER_SUCCESS ;
 int free (scalar_t__) ;
 scalar_t__ malloc (unsigned int) ;

VC_CONTAINER_STATUS_T vc_container_track_allocate_extradata( VC_CONTAINER_T *context,
   VC_CONTAINER_TRACK_T *p_track, unsigned int extra_size )
{
   VC_CONTAINER_PARAM_UNUSED(context);


   if(extra_size > 100*1024) return VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;


   if(extra_size > p_track->priv->extradata_size)
   {
      p_track->priv->extradata_size = 0;
      if(p_track->priv->extradata) free(p_track->priv->extradata);
      p_track->priv->extradata = malloc(extra_size);
      p_track->format->extradata = p_track->priv->extradata;
      if(!p_track->priv->extradata) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      p_track->priv->extradata_size = extra_size;
   }
   p_track->format->extradata = p_track->priv->extradata;

   return VC_CONTAINER_SUCCESS;
}
