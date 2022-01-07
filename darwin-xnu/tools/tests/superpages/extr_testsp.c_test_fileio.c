
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 char* FILENAME ;
 int F_NOCACHE ;
 int O_RDONLY ;
 int SEEK_SET ;
 unsigned int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int check_kr (int,char*) ;
 int close (int) ;
 int error ;
 int fcntl (int,int ,int) ;
 int lseek (int,int ,int ) ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,scalar_t__*,unsigned int,int) ;
 int mach_vm_deallocate (int ,scalar_t__,unsigned int) ;
 scalar_t__ memcmp (void*,void*,unsigned int) ;
 int open (char*,int ) ;
 unsigned int read (int,void*,unsigned int) ;
 int sprintf (int ,char*,...) ;

boolean_t
test_fileio() {
 mach_vm_address_t addr1 = 0;
 mach_vm_address_t addr2 = 0;
 mach_vm_size_t size = SUPERPAGE_SIZE;
 int kr, ret;
 int fd;
 unsigned int bytes;


 kr = mach_vm_allocate(mach_task_self(), &addr1, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
 if (!(ret = check_kr(kr, "mach_vm_allocate (1)"))) return ret;


 kr = mach_vm_allocate(mach_task_self(), &addr2, size, VM_FLAGS_ANYWHERE);
 if (!(ret = check_kr(kr, "mach_vm_allocate (2)"))) return ret;

 if ((fd = open(FILENAME, O_RDONLY))<0) {
  sprintf(error, "couldn't open %s", FILENAME);
  return FALSE;
 }
 fcntl(fd, F_NOCACHE, 1);

 if ((bytes = read(fd, (void*)(uintptr_t)addr1, SUPERPAGE_SIZE)) < SUPERPAGE_SIZE) {
  sprintf(error, "short read (1)");
  return FALSE;
 }
 lseek(fd, 0, SEEK_SET);

 if ((bytes = read(fd, (void*)(uintptr_t)addr2, SUPERPAGE_SIZE)) < SUPERPAGE_SIZE) {
  sprintf(error, "short read (2)");
  return FALSE;
 }
 close(fd);


 if (memcmp((void*)(uintptr_t)addr1, (void*)(uintptr_t)addr2, bytes)) {
  sprintf(error, "read data corrupt");
  return FALSE;
 }

 kr = mach_vm_deallocate(mach_task_self(), addr1, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate (1)"))) return ret;
 kr = mach_vm_deallocate(mach_task_self(), addr2, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate (2)"))) return ret;
 return TRUE;
}
