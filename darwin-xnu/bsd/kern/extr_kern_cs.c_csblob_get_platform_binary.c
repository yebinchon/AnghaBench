
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_blob {scalar_t__ csb_platform_binary; } ;



int
csblob_get_platform_binary(struct cs_blob *blob)
{
    if (blob && blob->csb_platform_binary)
 return 1;
    return 0;
}
