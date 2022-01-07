
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct segment_command_64 {int flags; int nsects; int initprot; int maxprot; int filesize; int fileoff; int vmsize; int vmaddr; int segname; int cmdsize; int cmd; } ;
struct segment_command {int flags; int nsects; int initprot; int maxprot; int filesize; int fileoff; int vmsize; int vmaddr; int segname; int cmdsize; int cmd; } ;


 int bcopy (int ,int ,int) ;

__attribute__((used)) static inline void
widen_segment_command(const struct segment_command *scp32,
    struct segment_command_64 *scp)
{
 scp->cmd = scp32->cmd;
 scp->cmdsize = scp32->cmdsize;
 bcopy(scp32->segname, scp->segname, sizeof(scp->segname));
 scp->vmaddr = scp32->vmaddr;
 scp->vmsize = scp32->vmsize;
 scp->fileoff = scp32->fileoff;
 scp->filesize = scp32->filesize;
 scp->maxprot = scp32->maxprot;
 scp->initprot = scp32->initprot;
 scp->nsects = scp32->nsects;
 scp->flags = scp32->flags;
}
