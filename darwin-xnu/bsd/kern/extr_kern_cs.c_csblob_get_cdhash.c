
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cs_blob {int const* csb_cdhash; } ;



const uint8_t *
csblob_get_cdhash(struct cs_blob *csblob)
{
 return csblob->csb_cdhash;
}
