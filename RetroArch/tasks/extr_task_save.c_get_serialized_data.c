
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; void* data; } ;
typedef TYPE_1__ retro_ctx_serialize_info_t ;


 int MSG_BYTES ;
 int MSG_STATE_SIZE ;
 int RARCH_LOG (char*,int ,int,int ) ;
 int core_serialize (TYPE_1__*) ;
 int free (void*) ;
 void* malloc (size_t) ;
 int msg_hash_to_str (int ) ;

__attribute__((used)) static void *get_serialized_data(const char *path, size_t serial_size)
{
   retro_ctx_serialize_info_t serial_info;
   bool ret = 0;
   void *data = ((void*)0);

   if (!serial_size)
      return ((void*)0);

   data = malloc(serial_size);

   if (!data)
      return ((void*)0);

   RARCH_LOG("%s: %d %s.\n",
         msg_hash_to_str(MSG_STATE_SIZE),
         (int)serial_size,
         msg_hash_to_str(MSG_BYTES));

   serial_info.data = data;
   serial_info.size = serial_size;
   ret = core_serialize(&serial_info);

   if (!ret)
   {
      free(data);
      return ((void*)0);
   }

   return data;
}
