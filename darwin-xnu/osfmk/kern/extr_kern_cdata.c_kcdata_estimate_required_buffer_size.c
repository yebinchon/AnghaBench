
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kcdata_item {int dummy; } ;


 int KCDATA_ALIGNMENT_SIZE ;

uint32_t kcdata_estimate_required_buffer_size(uint32_t num_items, uint32_t payload_size)
{



 uint32_t max_padding_bytes = num_items * (KCDATA_ALIGNMENT_SIZE - 1);
 uint32_t item_description_bytes = num_items * sizeof(struct kcdata_item);
 uint32_t begin_and_end_marker_bytes = 2 * sizeof(struct kcdata_item);

 return max_padding_bytes + item_description_bytes + begin_and_end_marker_bytes + payload_size;
}
