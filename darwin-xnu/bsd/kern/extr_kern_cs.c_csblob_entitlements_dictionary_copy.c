
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_blob {void* csb_entitlements; } ;


 int osobject_retain (void*) ;

void *
csblob_entitlements_dictionary_copy(struct cs_blob *csblob)
{
    if (!csblob->csb_entitlements) return ((void*)0);
    osobject_retain(csblob->csb_entitlements);
    return csblob->csb_entitlements;
}
