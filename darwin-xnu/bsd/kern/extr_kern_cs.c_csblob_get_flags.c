
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_blob {unsigned int csb_flags; } ;



unsigned int
csblob_get_flags(struct cs_blob *blob)
{
    return blob->csb_flags;
}
