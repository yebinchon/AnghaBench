
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_blob {int * csb_entitlements; } ;


 int assert (int ) ;
 int osobject_retain (void*) ;

void
csblob_entitlements_dictionary_set(struct cs_blob *csblob, void * entitlements)
{
    assert(csblob->csb_entitlements == ((void*)0));
    if (entitlements) osobject_retain(entitlements);
    csblob->csb_entitlements = entitlements;
}
