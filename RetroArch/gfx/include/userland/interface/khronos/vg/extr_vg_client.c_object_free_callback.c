
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef void KHRN_POINTER_MAP_T ;


 int UNUSED (void*) ;
 int object_free (void*) ;

__attribute__((used)) static void object_free_callback(KHRN_POINTER_MAP_T *pointer_map, uint32_t key, void *object, void *data)
{
   UNUSED(pointer_map);
   UNUSED(key);
   UNUSED(data);

   object_free(object);
}
