
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mach_header_64 {int flags; int sizeofcmds; int ncmds; int filetype; int cpusubtype; int cputype; int magic; } ;


 int SWAP32 (int ) ;

__attribute__((used)) static void __swap_mach_header_64(struct mach_header_64 *header) {
 SWAP32(header->magic);
 SWAP32(header->cputype);
 SWAP32(header->cpusubtype);
 SWAP32(header->filetype);
 SWAP32(header->ncmds);
 SWAP32(header->sizeofcmds);
 SWAP32(header->flags);
}
