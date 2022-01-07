
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_blob {int csb_base_offset; } ;
typedef int off_t ;



off_t
csblob_get_base_offset(struct cs_blob *blob)
{
    return blob->csb_base_offset;
}
