
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_blob {unsigned int csb_signer_type; } ;



unsigned int
csblob_get_signer_type(struct cs_blob *csblob)
{
 return csblob->csb_signer_type;
}
