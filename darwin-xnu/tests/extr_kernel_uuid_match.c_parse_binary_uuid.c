
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uuid_string_t ;
typedef scalar_t__ uint32_t ;
struct uuid_command {int uuid; } ;
struct mach_header_64 {scalar_t__ magic; unsigned int ncmds; } ;
struct mach_header {scalar_t__ magic; unsigned int ncmds; } ;
struct load_command {scalar_t__ cmd; scalar_t__ cmdsize; } ;


 scalar_t__ LC_UUID ;
 scalar_t__ MH_CIGAM ;
 scalar_t__ MH_CIGAM_64 ;
 scalar_t__ MH_MAGIC ;
 scalar_t__ MH_MAGIC_64 ;
 int SWAP32 (scalar_t__) ;
 int T_LOG (char*,int ) ;
 int __swap_mach_header (struct mach_header*) ;
 int __swap_mach_header_64 (struct mach_header_64*) ;
 int munmap (struct mach_header*,size_t) ;
 struct mach_header* open_file (char*,size_t*) ;
 int uuid_copy (int ,int ) ;
 int uuid_unparse (int ,int ) ;

__attribute__((used)) static bool parse_binary_uuid(char *path, uuid_t uuid) {
 size_t len = 0;
 bool should_swap = 0;
 unsigned int ncmds = 0;
 struct load_command *lc = ((void*)0);
 bool ret = 0;

 struct mach_header *h = open_file(path, &len);
 if (!h) {
  return 0;
 }
 if (h->magic == MH_MAGIC || h->magic == MH_CIGAM) {

  struct mach_header *header = h;
  if (header->magic == MH_CIGAM) {
   __swap_mach_header(header);
   should_swap = 1;
  }
  ncmds = header->ncmds;

  lc = (struct load_command *)(header + 1);
 } else if (h->magic == MH_MAGIC_64 || h->magic == MH_CIGAM_64) {

  struct mach_header_64 *header = (struct mach_header_64 *)h;
  if (header->magic == MH_CIGAM_64) {
   __swap_mach_header_64(header);
   should_swap = 1;
  }
  ncmds = header->ncmds;
  lc = (struct load_command *)(header + 1);
 } else {

  munmap(h, len);
  return 0;
 }
 for (unsigned int i = 0; i < ncmds; i++) {
  uint32_t cmd = lc->cmd;
  uint32_t cmdsize = lc->cmdsize;
  if (should_swap) {
   SWAP32(cmd);
   SWAP32(cmdsize);
  }
  if (cmd == LC_UUID) {
   struct uuid_command *uuid_cmd =
     (struct uuid_command *)lc;
   uuid_copy(uuid, uuid_cmd->uuid);
   uuid_string_t tuuid_str;
   uuid_unparse(uuid, tuuid_str);
   T_LOG("Trying test UUID %s", tuuid_str);
   ret = 1;
   break;
  }
  lc = (struct load_command *)((uintptr_t)lc + cmdsize);
 }
 munmap(h, len);
 return ret;
}
