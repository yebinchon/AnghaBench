
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {int len; int mgap; } ;
typedef TYPE_1__ VC_CONTAINER_INDEX_T ;
typedef int VC_CONTAINER_INDEX_POS_T ;


 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

VC_CONTAINER_STATUS_T vc_container_index_create( VC_CONTAINER_INDEX_T **index, int length )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   VC_CONTAINER_INDEX_T *id = ((void*)0);
   int len = 0;

   if(length < 16) length = 16;
   if(length > 4096) length = 4096;
   while((length >>= 1) != 0)
      len++;

   id = malloc(sizeof(VC_CONTAINER_INDEX_T) + (sizeof(VC_CONTAINER_INDEX_POS_T)<<len));
   if(id == ((void*)0)) { goto error; }

   memset(id, 0, sizeof(VC_CONTAINER_INDEX_T));

   id->len = id->mgap = len;

   *index = id;
   return VC_CONTAINER_SUCCESS;

 error:
   return status;
}
