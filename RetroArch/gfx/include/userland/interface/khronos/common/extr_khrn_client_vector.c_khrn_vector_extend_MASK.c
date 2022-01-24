#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int size; int capacity; void* data; } ;
typedef  TYPE_1__ KHRN_VECTOR_T ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 

bool FUNC4(KHRN_VECTOR_T *vector, uint32_t size)
{
   uint32_t req_capacity = vector->size + size;
   if (req_capacity > vector->capacity) {
      uint32_t new_capacity = FUNC0(vector->capacity + (vector->capacity >> 1), req_capacity);
      void *new_data = FUNC2(new_capacity, "KHRN_VECTOR_T.data");
      if (!new_data) {
         new_capacity = req_capacity;
         new_data = FUNC2(new_capacity, "KHRN_VECTOR_T.data");
         if (!new_data) {
            return false;
         }
      }
      if (vector->data) {
         FUNC3(new_data, vector->data, vector->size);
         FUNC1(vector->data);
      }
      vector->data = new_data;
      vector->capacity = new_capacity;
   }
   vector->size += size;
   return true;
}