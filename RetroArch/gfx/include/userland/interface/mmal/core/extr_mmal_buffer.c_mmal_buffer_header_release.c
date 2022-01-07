
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {scalar_t__ refcount; int pre_release_userdata; scalar_t__ (* pf_pre_release ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,TYPE_2__*,int) ;
 int mmal_buffer_header_release_continue (TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

void mmal_buffer_header_release(MMAL_BUFFER_HEADER_T *header)
{




   if(--header->priv->refcount != 0)
      return;

   if (header->priv->pf_pre_release)
   {
      if (header->priv->pf_pre_release(header, header->priv->pre_release_userdata))
         return;
   }
   mmal_buffer_header_release_continue(header);
}
