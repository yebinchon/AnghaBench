
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct uuid_command {scalar_t__ cmd; int cmdsize; int const uuid; } ;
struct TYPE_2__ {scalar_t__ magic; size_t sizeofcmds; size_t ncmds; } ;
typedef TYPE_1__ kernel_mach_header_t ;


 int AUTHPRNT (char*) ;
 scalar_t__ LC_UUID ;
 scalar_t__ MH_MAGIC_64 ;
 scalar_t__ os_add_overflow (int ,size_t,size_t*) ;

__attribute__((used)) static const uuid_t *
getuuidfromheader_safe(const void *buf, size_t bufsz, size_t *uuidsz)
{
 const struct uuid_command *cmd = ((void*)0);
 const kernel_mach_header_t *mh = buf;


 if (bufsz < sizeof(kernel_mach_header_t) + sizeof(struct uuid_command)) {
  AUTHPRNT("libkern image too small");
  return ((void*)0);
 }


 if (mh->magic != MH_MAGIC_64 || (mh->sizeofcmds > bufsz - sizeof(kernel_mach_header_t))) {
  AUTHPRNT("invalid MachO header");
  return ((void*)0);
 }


 size_t offset = sizeof(kernel_mach_header_t);
 for (size_t i = 0; i < mh->ncmds; i++) {
  cmd = buf + offset;

  if (cmd->cmd == LC_UUID) {
   *uuidsz = sizeof(cmd->uuid);
   return &cmd->uuid;
  }

  if (os_add_overflow(cmd->cmdsize, offset, &offset) ||
    offset > bufsz - sizeof(struct uuid_command)) {
   return ((void*)0);
  }
 }

 return ((void*)0);
}
