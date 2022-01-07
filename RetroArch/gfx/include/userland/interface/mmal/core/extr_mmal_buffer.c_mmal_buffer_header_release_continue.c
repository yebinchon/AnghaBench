
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int (* pf_release ) (TYPE_2__*) ;scalar_t__ reference; } ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int mmal_buffer_header_release (scalar_t__) ;
 int mmal_buffer_header_reset (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void mmal_buffer_header_release_continue(MMAL_BUFFER_HEADER_T *header)
{
   mmal_buffer_header_reset(header);
   if (header->priv->reference)
      mmal_buffer_header_release(header->priv->reference);
   header->priv->reference = 0;
   header->priv->pf_release(header);
}
