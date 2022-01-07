
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int proc_t ;
typedef int int32_t ;


 int ERANGE ;
 int MAX_UPTRS ;
 int USER_ADDR_NULL ;
 int assert (int ) ;
 int bzero (void*,int) ;
 int copyout (void*,int ,size_t) ;
 void* kalloc (int) ;
 int kevent_proc_copy_uptrs (int ,void*,int) ;
 int kfree (void*,int) ;
 scalar_t__ os_mul_overflow (int ,int,size_t*) ;

int
proc_pidlistuptrs(proc_t p, user_addr_t buffer, uint32_t buffersize, int32_t *retval)
{
 uint32_t count = 0;
 int error = 0;
 void *kbuf = ((void*)0);
 int32_t nuptrs = 0;

 if (buffer != USER_ADDR_NULL) {
  count = buffersize / sizeof(uint64_t);
  if (count > MAX_UPTRS) {
   count = MAX_UPTRS;
  }
  if (count > 0) {
   buffersize = count * sizeof(uint64_t);
   kbuf = kalloc(buffersize);
   bzero(kbuf, buffersize);
   assert(kbuf != ((void*)0));
  } else {
   buffersize = 0;
  }
 } else {
  buffersize = 0;
 }

 nuptrs = kevent_proc_copy_uptrs(p, kbuf, buffersize);

 if (kbuf) {
  size_t copysize;
  if (os_mul_overflow(nuptrs, sizeof(uint64_t), &copysize)) {
   error = ERANGE;
   goto out;
  }
  if (copysize > buffersize) {
   copysize = buffersize;
  }
  error = copyout(kbuf, buffer, copysize);
 }

out:
 *retval = nuptrs;

 if (kbuf) {
  kfree(kbuf, buffersize);
  kbuf = ((void*)0);
 }

 return error;
}
