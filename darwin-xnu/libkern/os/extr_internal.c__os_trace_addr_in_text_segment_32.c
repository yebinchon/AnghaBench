
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct segment_command {scalar_t__ cmd; uintptr_t vmaddr; uintptr_t vmsize; int cmdsize; int segname; } ;
struct mach_header {scalar_t__ ncmds; } ;


 scalar_t__ LC_SEGMENT ;
 int SEG_TEXT ;
 scalar_t__ strncmp (int ,int ,int) ;

__attribute__((used)) static bool
_os_trace_addr_in_text_segment_32(const void *dso, const void *addr)
{
    const struct mach_header *mhp = (const struct mach_header *) dso;
    const struct segment_command *sgp = (const struct segment_command *)(const void *)((const char *)mhp + sizeof(struct mach_header));

    for (uint32_t i = 0; i < mhp->ncmds; i++) {
        if (sgp->cmd == LC_SEGMENT) {
            if (strncmp(sgp->segname, SEG_TEXT, sizeof(sgp->segname)) == 0) {
                return ((uintptr_t)addr >= (sgp->vmaddr) && (uintptr_t)addr < (sgp->vmaddr + sgp->vmsize));
            }
        }
        sgp = (const struct segment_command *)(const void *)((const char *)sgp + sgp->cmdsize);
    }

    return 0;
}
