
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_blob {char const* csb_teamid; } ;



const char *
csblob_get_teamid(struct cs_blob *csblob)
{
 return csblob->csb_teamid;
}
