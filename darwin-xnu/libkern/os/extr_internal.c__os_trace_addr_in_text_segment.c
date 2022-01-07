
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mach_header {int magic; } ;




 int _os_trace_addr_in_text_segment_32 (void const*,void const*) ;
 int _os_trace_addr_in_text_segment_64 (void const*,void const*) ;

bool
_os_trace_addr_in_text_segment(const void *dso, const void *addr)
{
    const struct mach_header *mhp = (const struct mach_header *) dso;
    bool retval = 0;

    switch (mhp->magic) {
        case 129:
            retval = _os_trace_addr_in_text_segment_32(dso, addr);
            break;

        case 128:
            retval = _os_trace_addr_in_text_segment_64(dso, addr);
            break;

        default:
            retval = 0;
            break;
    }

    return retval;
}
