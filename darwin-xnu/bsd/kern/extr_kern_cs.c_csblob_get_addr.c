
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_address_t ;
struct cs_blob {int csb_mem_kaddr; } ;



vm_address_t
csblob_get_addr(struct cs_blob *blob)
{
    return blob->csb_mem_kaddr;
}
