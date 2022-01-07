
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {void* pre_release_userdata; int pf_pre_release; } ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef int MMAL_BH_PRE_RELEASE_CB_T ;



void mmal_buffer_header_pre_release_cb_set(MMAL_BUFFER_HEADER_T *header, MMAL_BH_PRE_RELEASE_CB_T cb, void *userdata)
{
   header->priv->pf_pre_release = cb;
   header->priv->pre_release_userdata = userdata;
}
