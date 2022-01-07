
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mach_header {scalar_t__ magic; } ;
typedef enum NXByteOrder { ____Placeholder_NXByteOrder } NXByteOrder ;


 scalar_t__ MH_MAGIC ;
 scalar_t__ MH_MAGIC_64 ;
 int unswap_macho_32 (int *,int,int) ;
 int unswap_macho_64 (int *,int,int) ;

void unswap_macho(u_char *file, enum NXByteOrder host_order,
    enum NXByteOrder target_order)
{
    struct mach_header *hdr = (struct mach_header *) ((void *) file);

    if (!hdr) return;

    if (hdr->magic == MH_MAGIC) {
        unswap_macho_32(file, host_order, target_order);
    } else if (hdr->magic == MH_MAGIC_64) {
        unswap_macho_64(file, host_order, target_order);
    }
}
