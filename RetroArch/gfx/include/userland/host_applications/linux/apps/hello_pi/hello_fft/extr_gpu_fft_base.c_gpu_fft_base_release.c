
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GPU_FFT_BASE {int mb; unsigned int handle; unsigned int size; unsigned int peri_size; scalar_t__ peri; } ;


 int mem_free (int,unsigned int) ;
 int mem_unlock (int,unsigned int) ;
 int qpu_enable (int,int ) ;
 int unmapmem (void*,unsigned int) ;

void gpu_fft_base_release(struct GPU_FFT_BASE *base) {
    int mb = base->mb;
    unsigned handle = base->handle, size = base->size;
    unmapmem((void*)base->peri, base->peri_size);
    unmapmem((void*)base, size);
    mem_unlock(mb, handle);
    mem_free(mb, handle);
    qpu_enable(mb, 0);
}
