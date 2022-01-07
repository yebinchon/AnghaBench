
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct segment_command_64 {unsigned int nsects; int segname; } ;
struct section_64 {int size; int addr; int sectname; } ;
struct section {int size; int addr; } ;
struct TYPE_3__ {int all_image_info_size; int all_image_info_addr; } ;
typedef TYPE_1__ load_result_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void
note_all_image_info_section(const struct segment_command_64 *scp,
    boolean_t is64, size_t section_size, const void *sections,
    int64_t slide, load_result_t *result)
{
 const union {
  struct section s32;
  struct section_64 s64;
 } *sectionp;
 unsigned int i;


 if (strncmp(scp->segname, "__DATA", sizeof(scp->segname)) != 0)
  return;
 for (i = 0; i < scp->nsects; ++i) {
  sectionp = (const void *)
      ((const char *)sections + section_size * i);
  if (0 == strncmp(sectionp->s64.sectname, "__all_image_info",
      sizeof(sectionp->s64.sectname))) {
   result->all_image_info_addr =
       is64 ? sectionp->s64.addr : sectionp->s32.addr;
   result->all_image_info_addr += slide;
   result->all_image_info_size =
       is64 ? sectionp->s64.size : sectionp->s32.size;
   return;
  }
 }
}
