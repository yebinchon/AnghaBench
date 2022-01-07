
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int total_uncompressed_pages_in_compressor; int compressor_page_count; int decompressions; int compressions; int internal_page_count; int external_page_count; int speculative_count; int wire_count; int purgeable_count; int throttled_count; int inactive_count; int active_count; int free_count; } ;
typedef TYPE_1__ vm_statistics64_data_t ;
struct TYPE_7__ {int largest_zone_size; int largest_zone_name; int zone_map_capacity; int zone_map_size; int total_uncompressed_pages_in_compressor; int compressor_pages; int decompressions; int compressions; int anonymous_pages; int filebacked_pages; int speculative_pages; int wired_pages; int purgeable_pages; int throttled_pages; int inactive_pages; int active_pages; int free_pages; } ;
struct TYPE_6__ {TYPE_3__ stats; } ;
typedef TYPE_2__ memorystatus_jetsam_snapshot_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int host_info64_t ;


 int HOST_VM_INFO64 ;
 int HOST_VM_INFO64_COUNT ;
 int KERN_SUCCESS ;
 int get_largest_zone_info (int ,int,int *) ;
 int get_zone_map_size (int *,int *) ;
 int host_self () ;
 int host_statistics64 (int ,int ,int ,int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void
memorystatus_init_snapshot_vmstats(memorystatus_jetsam_snapshot_t *snapshot)
{
 kern_return_t kr = KERN_SUCCESS;
 mach_msg_type_number_t count = HOST_VM_INFO64_COUNT;
 vm_statistics64_data_t vm_stat;

 if ((kr = host_statistics64(host_self(), HOST_VM_INFO64, (host_info64_t)&vm_stat, &count)) != KERN_SUCCESS) {
  printf("memorystatus_init_jetsam_snapshot_stats: host_statistics64 failed with %d\n", kr);
  memset(&snapshot->stats, 0, sizeof(snapshot->stats));
 } else {
  snapshot->stats.free_pages = vm_stat.free_count;
  snapshot->stats.active_pages = vm_stat.active_count;
  snapshot->stats.inactive_pages = vm_stat.inactive_count;
  snapshot->stats.throttled_pages = vm_stat.throttled_count;
  snapshot->stats.purgeable_pages = vm_stat.purgeable_count;
  snapshot->stats.wired_pages = vm_stat.wire_count;

  snapshot->stats.speculative_pages = vm_stat.speculative_count;
  snapshot->stats.filebacked_pages = vm_stat.external_page_count;
  snapshot->stats.anonymous_pages = vm_stat.internal_page_count;
  snapshot->stats.compressions = vm_stat.compressions;
  snapshot->stats.decompressions = vm_stat.decompressions;
  snapshot->stats.compressor_pages = vm_stat.compressor_page_count;
  snapshot->stats.total_uncompressed_pages_in_compressor = vm_stat.total_uncompressed_pages_in_compressor;
 }

 get_zone_map_size(&snapshot->stats.zone_map_size, &snapshot->stats.zone_map_capacity);
 get_largest_zone_info(snapshot->stats.largest_zone_name, sizeof(snapshot->stats.largest_zone_name),
   &snapshot->stats.largest_zone_size);
}
