
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_blob {int * csb_entitlements; scalar_t__ csb_mem_kaddr; int csb_mem_size; } ;


 int kfree (struct cs_blob* const,int) ;
 int osobject_release (int *) ;
 int ubc_cs_blob_deallocate (scalar_t__,int ) ;

void
cs_blob_free(
    struct cs_blob * const blob)
{
    if (blob != ((void*)0)) {
        if (blob->csb_mem_kaddr) {
            ubc_cs_blob_deallocate(blob->csb_mem_kaddr, blob->csb_mem_size);
            blob->csb_mem_kaddr = 0;
        }
        if (blob->csb_entitlements != ((void*)0)) {
            osobject_release(blob->csb_entitlements);
            blob->csb_entitlements = ((void*)0);
        }
        kfree(blob, sizeof (*blob));
    }
}
