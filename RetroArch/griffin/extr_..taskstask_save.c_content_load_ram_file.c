
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ram_type {int path; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ size; int data; } ;
typedef TYPE_1__ retro_ctx_memory_info_t ;
typedef scalar_t__ int64_t ;


 int MSG_BYTES ;
 int MSG_TO ;
 int RARCH_WARN (char*,unsigned int,int ,int ,unsigned int) ;
 int content_get_memory (TYPE_1__*,struct ram_type*,unsigned int) ;
 int filestream_read_file (int ,void**,scalar_t__*) ;
 int free (void*) ;
 int memcpy (int ,void*,size_t) ;
 int msg_hash_to_str (int ) ;

bool content_load_ram_file(unsigned slot)
{
   int64_t rc;
   struct ram_type ram;
   retro_ctx_memory_info_t mem_info;
   void *buf = ((void*)0);

   if (!content_get_memory(&mem_info, &ram, slot))
      return 0;

   if (!filestream_read_file(ram.path, &buf, &rc))
      return 0;

   if (rc > 0)
   {
      if (rc > (ssize_t)mem_info.size)
      {
         RARCH_WARN("SRAM is larger than implementation expects, "
               "doing partial load (truncating %u %s %s %u).\n",
               (unsigned)rc,
               msg_hash_to_str(MSG_BYTES),
               msg_hash_to_str(MSG_TO),
               (unsigned)mem_info.size);
         rc = mem_info.size;
      }
      memcpy(mem_info.data, buf, (size_t)rc);
   }

   if (buf)
      free(buf);

   return 1;
}
