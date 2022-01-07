
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_INDEX_T ;


 int VC_CONTAINER_ERROR_FAILED ;
 int VC_CONTAINER_SUCCESS ;
 int free (int *) ;

VC_CONTAINER_STATUS_T vc_container_index_free( VC_CONTAINER_INDEX_T *index )
{
   if(index == ((void*)0))
      return VC_CONTAINER_ERROR_FAILED;

   free(index);
   return VC_CONTAINER_SUCCESS;
}
