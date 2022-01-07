
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int length; int sub_tag; int tag; } ;
typedef TYPE_1__ kd_chunk_header_v3 ;


 int memcpy (void*,TYPE_1__*,int) ;

int
kdbg_write_v3_chunk_header_to_buffer(void * buffer, uint32_t tag, uint32_t sub_tag, uint64_t length)
{
 kd_chunk_header_v3 header = {
  .tag = tag,
  .sub_tag = sub_tag,
  .length = length,
 };

 if (!buffer) {
  return 0;
 }

 memcpy(buffer, &header, sizeof(kd_chunk_header_v3));

 return (sizeof(kd_chunk_header_v3));
}
