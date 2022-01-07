
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {intptr_t end; intptr_t start; } ;
typedef TYPE_1__ soc_reserved_region_t ;
struct TYPE_7__ {intptr_t start; intptr_t size; } ;
typedef TYPE_2__ soc_memory_region_t ;
typedef int in_regions ;


 int ESP_EARLY_LOGD (int ,char*,...) ;
 int ESP_EARLY_LOGV (int ,char*,intptr_t,intptr_t,...) ;
 int TAG ;
 int assert (int) ;
 int memcpy (TYPE_2__*,int ,int) ;
 size_t s_get_num_reserved_regions () ;
 int s_prepare_reserved_regions (TYPE_1__*,size_t) ;
 int soc_memory_region_count ;
 int soc_memory_regions ;

size_t soc_get_available_memory_regions(soc_memory_region_t *regions)
{
    soc_memory_region_t *out_region = regions;

    soc_memory_region_t in_regions[soc_memory_region_count];
    memcpy(in_regions, soc_memory_regions, sizeof(in_regions));
    soc_memory_region_t *in_region = in_regions;

    size_t num_reserved = s_get_num_reserved_regions();
    soc_reserved_region_t reserved[num_reserved];

    s_prepare_reserved_regions(reserved, num_reserved);





    ESP_EARLY_LOGD(TAG, "Building list of available memory regions:");
    while(in_region != in_regions + soc_memory_region_count) {
        soc_memory_region_t in = *in_region;
        ESP_EARLY_LOGV(TAG, "Examining memory region 0x%08x - 0x%08x", in.start, in.start + in.size);
        intptr_t in_start = in.start;
        intptr_t in_end = in_start + in.size;
        bool copy_in_to_out = 1;
        bool move_to_next = 1;

        for (size_t i = 0; i < num_reserved; i++) {
            if (reserved[i].end <= in_start) {

                continue;
            }
            else if (reserved[i].start >= in_end) {

                break;
            }
            else if (reserved[i].start <= in_start &&
                     reserved[i].end >= in_end) {
                ESP_EARLY_LOGV(TAG, "Region 0x%08x - 0x%08x inside of reserved 0x%08x - 0x%08x",
                               in_start, in_end, reserved[i].start, reserved[i].end);

                copy_in_to_out = 0;
                break;
            }
            else if (in_start < reserved[i].start &&
                     in_end > reserved[i].end) {
                ESP_EARLY_LOGV(TAG, "Region 0x%08x - 0x%08x contains reserved 0x%08x - 0x%08x",
                               in_start, in_end, reserved[i].start, reserved[i].end);
                assert(in_start < reserved[i].start);
                assert(in_end > reserved[i].end);


                in_end = reserved[i].start;
                in.size = in_end - in_start;



                in_region->size -= (reserved[i].end - in_region->start);
                in_region->start = reserved[i].end;


                move_to_next = 0;
                break;
            }
            else if (reserved[i].start <= in_start) {
                ESP_EARLY_LOGV(TAG, "Start of region 0x%08x - 0x%08x overlaps reserved 0x%08x - 0x%08x",
                               in_start, in_end, reserved[i].start, reserved[i].end);
                in.start = reserved[i].end;
                in_start = in.start;
                in.size = in_end - in_start;
            }
            else {
                ESP_EARLY_LOGV(TAG, "End of region 0x%08x - 0x%08x overlaps reserved 0x%08x - 0x%08x",
                               in_start, in_end, reserved[i].start, reserved[i].end);
                in_end = reserved[i].start;
                in.size = in_end - in_start;
            }
        }

        if (copy_in_to_out) {
            ESP_EARLY_LOGD(TAG, "Available memory region 0x%08x - 0x%08x", in.start, in.start + in.size);
            *out_region++ = in;
        }
        if (move_to_next) {
            in_region++;
        }
    }

    return (out_region - regions);
}
