
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int uint64_t ;
typedef int copyio_type_t ;






 int EFAULT ;
 int EINVAL ;
 uintptr_t TBI_MASK ;
 int __asan_loadN (uintptr_t,scalar_t__) ;
 int __asan_storeN (uintptr_t,scalar_t__) ;
 scalar_t__ __improbable (int) ;
 scalar_t__ __probable (int ) ;
 int _bcopyin (char const*,char*,scalar_t__) ;
 int _bcopyinstr (char const*,char*,scalar_t__,scalar_t__*) ;
 int _bcopyout (char const*,char*,scalar_t__) ;
 int _copyin_word (char const*,int *,scalar_t__) ;
 int copyio_zalloc_check ;
 int panic (char*,void*,scalar_t__,scalar_t__) ;
 int user_access_disable () ;
 int user_access_enable () ;
 scalar_t__ zone_element_size (void*,int *) ;

__attribute__((used)) static int
copyio(copyio_type_t copytype, const char *src, char *dst,
    vm_size_t nbytes, vm_size_t *lencopied)
{
 int result = 0;
 vm_size_t bytes_copied = 0;
 vm_size_t kernel_buf_size = 0;
 void * kernel_addr = ((void*)0);


 if (copytype == 128) {
  if ((uintptr_t)dst & TBI_MASK)
   return EINVAL;
 } else {
  if ((uintptr_t)src & TBI_MASK)
   return EINVAL;
 }

 if (__probable(copyio_zalloc_check)) {
  if (copytype == 131 || copytype == 130 || copytype == 129) {
   kernel_addr = (void*)dst;
  } else if (copytype == 128) {
   kernel_addr = (void*)(uintptr_t)src;
  }
  if (kernel_addr)
   kernel_buf_size = zone_element_size(kernel_addr, ((void*)0));
  if (__improbable(kernel_buf_size && kernel_buf_size < nbytes))
   panic("copyio: kernel buffer %p has size %lu < nbytes %lu", kernel_addr, kernel_buf_size, nbytes);
 }
 user_access_enable();






 switch (copytype) {
 case 131:
  result = _bcopyin(src, dst, nbytes);
  break;
 case 130:
  result = _bcopyinstr(src, dst, nbytes, &bytes_copied);
  if (result != EFAULT) {
   *lencopied = bytes_copied;
  }
  break;
 case 129:
  result = _copyin_word(src, (uint64_t *)(uintptr_t)dst, nbytes);
  break;
 case 128:
  result = _bcopyout(src, dst, nbytes);
  break;
 default:
  result = EINVAL;
 }

 user_access_disable();
 return result;
}
