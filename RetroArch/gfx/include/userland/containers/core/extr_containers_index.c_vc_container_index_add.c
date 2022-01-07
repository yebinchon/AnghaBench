
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {int next; scalar_t__ max_time; int count; int max_count; int len; int gap; int mgap; TYPE_1__* entry; } ;
typedef TYPE_2__ VC_CONTAINER_INDEX_T ;
struct TYPE_5__ {scalar_t__ time; scalar_t__ file_offset; } ;


 int ENTRY (TYPE_2__*,int) ;
 int VC_CONTAINER_ERROR_FAILED ;
 int VC_CONTAINER_SUCCESS ;

VC_CONTAINER_STATUS_T vc_container_index_add( VC_CONTAINER_INDEX_T *index, int64_t time, int64_t file_offset )
{
   if(index == ((void*)0))
      return VC_CONTAINER_ERROR_FAILED;


   if(index->next != 0 && time <= index->max_time)
      return VC_CONTAINER_SUCCESS;

   index->count++;
   if(index->count == (1<<index->max_count))
   {
      int entry;
      if(index->next == (1<<index->len))
      {


         index->next >>= 1;
         index->gap++;
         index->mgap--;
         index->max_count++;

         if(index->gap == index->len)
         {
            index->gap = 0;
            index->mgap = index->len;
         }
      }

      entry = ENTRY(index, index->next);

      index->entry[entry].file_offset = file_offset;
      index->entry[entry].time = time;
      index->count = 0;
      index->next++;
      index->max_time = time;
   }

   return VC_CONTAINER_SUCCESS;
}
