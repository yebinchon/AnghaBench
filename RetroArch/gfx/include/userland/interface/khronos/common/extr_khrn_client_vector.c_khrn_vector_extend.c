
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; int capacity; void* data; } ;
typedef TYPE_1__ KHRN_VECTOR_T ;


 int _max (int,int) ;
 int khrn_platform_free (void*) ;
 void* khrn_platform_malloc (int,char*) ;
 int memcpy (void*,void*,int) ;

bool khrn_vector_extend(KHRN_VECTOR_T *vector, uint32_t size)
{
   uint32_t req_capacity = vector->size + size;
   if (req_capacity > vector->capacity) {
      uint32_t new_capacity = _max(vector->capacity + (vector->capacity >> 1), req_capacity);
      void *new_data = khrn_platform_malloc(new_capacity, "KHRN_VECTOR_T.data");
      if (!new_data) {
         new_capacity = req_capacity;
         new_data = khrn_platform_malloc(new_capacity, "KHRN_VECTOR_T.data");
         if (!new_data) {
            return 0;
         }
      }
      if (vector->data) {
         memcpy(new_data, vector->data, vector->size);
         khrn_platform_free(vector->data);
      }
      vector->data = new_data;
      vector->capacity = new_capacity;
   }
   vector->size += size;
   return 1;
}
