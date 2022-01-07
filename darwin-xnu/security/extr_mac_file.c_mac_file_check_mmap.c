
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ucred {int dummy; } ;
struct fileglob {int fg_label; } ;


 int MAC_CHECK (int ,struct ucred*,struct fileglob*,int ,int,int,int ,int*) ;
 int file_check_mmap ;
 int panic (char*) ;

int
mac_file_check_mmap(struct ucred *cred, struct fileglob *fg, int prot,
    int flags, uint64_t offset, int *maxprot)
{
 int error;
 int maxp;

 maxp = *maxprot;
 MAC_CHECK(file_check_mmap, cred, fg, fg->fg_label, prot, flags, offset, &maxp);
 if ((maxp | *maxprot) != *maxprot)
  panic("file_check_mmap increased max protections");
 *maxprot = maxp;
 return (error);
}
