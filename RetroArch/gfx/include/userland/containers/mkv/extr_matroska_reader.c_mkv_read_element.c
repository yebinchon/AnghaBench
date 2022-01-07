
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {TYPE_2__* priv; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {TYPE_1__* module; } ;
struct TYPE_7__ {int * elements_list; } ;
typedef int MKV_ELEMENT_T ;
typedef int MKV_ELEMENT_ID_T ;


 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mkv_read_element_data (TYPE_3__*,int *,int ,int ) ;
 scalar_t__ mkv_read_element_header (TYPE_3__*,int ,int *,int *,int ,int **) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_read_element(VC_CONTAINER_T *p_ctx,
   int64_t size, MKV_ELEMENT_ID_T parent_id)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   MKV_ELEMENT_T *element = p_ctx->priv->module->elements_list;
   int64_t element_size;
   MKV_ELEMENT_ID_T id;

   status = mkv_read_element_header(p_ctx, size, &id, &element_size, parent_id, &element);
   if(status != VC_CONTAINER_SUCCESS) return status;
   return mkv_read_element_data(p_ctx, element, element_size, size);
}
