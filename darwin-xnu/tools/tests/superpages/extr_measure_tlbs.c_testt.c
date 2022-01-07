
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef unsigned int clock_t ;
typedef scalar_t__ boolean_t ;


 unsigned int NODE_ACCESSES ;
 int NODE_SIZE ;
 int PAGE_SIZE ;
 unsigned int PRIME ;
 unsigned int RUNS0 ;
 int RUNS1 ;
 int RUNS2 ;
 int SUPERPAGE_ROUND_UP (int) ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_SUPERPAGE_NONE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 unsigned int clock () ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,scalar_t__*,int ,int) ;
 int mach_vm_deallocate (int ,scalar_t__,int ) ;

clock_t
testt(boolean_t superpages, int mode, int write, int kb) {
 static int sum;
 char *data;
 unsigned int run, p, p2, i, res;
 mach_vm_address_t addr = 0;
 int pages = kb/4;
 mach_vm_size_t size = SUPERPAGE_ROUND_UP(pages*PAGE_SIZE);
 int kr;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_ANYWHERE | (superpages? VM_FLAGS_SUPERPAGE_SIZE_2MB : VM_FLAGS_SUPERPAGE_NONE));

 if (!addr)
  return 0;

 data = (char*)(long)addr;


 for (p = 0; p<pages; p++) {
  sum += data[p*PAGE_SIZE];
 }

 clock_t a = clock();
 switch (mode) {
  case 0:
   if (write) {
    for (run = 0; run < RUNS0; run++) {
     for (p = 0; p<pages; p++) {
      data[p*PAGE_SIZE] = run & 0xFF;
     }
    }
   } else {
    for (run = 0; run < RUNS0; run++) {
     for (p = 0; p<pages; p++) {
      sum += data[p*PAGE_SIZE];
     }
    }
   }
   break;
  case 1:
   if (write) {
    for (run = 0; run < RUNS1/PAGE_SIZE; run++) {
     for (i = 0; i<pages*PAGE_SIZE; i++) {
      data[i] = run & 0xFF;
     }
    }
   } else {
    for (run = 0; run < RUNS1/PAGE_SIZE; run++) {
     for (i = 0; i<pages*PAGE_SIZE; i++) {
      sum += data[i];
     }
    }
   }
   break;
  case 2:



   p = 0;
   if (write) {
    for (run = 0; run < RUNS2*pages; run++) {
     p += 15485863;
     p2 = p % (pages*PAGE_SIZE/128);

     for (i = 0; i < 16; i++) {
      data[p2*128 +i] = run & 0xFF;
     }
    }
   } else {
    for (run = 0; run < RUNS2*pages; run++) {
     p += 15485863;
     p2 = p % (pages*PAGE_SIZE/128);
     for (i = 0; i < 16; i++) {
      sum += data[p2*128 +i];
     }
    }
   }
   break;
 }
 clock_t b = clock();
 mach_vm_deallocate(mach_task_self(), addr, size);
 res = b-a;
 res /= pages;
 return res;
}
