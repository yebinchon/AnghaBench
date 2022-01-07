
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cs_blob {int * csb_hashtype; } ;


 int cs_hash_type (int *) ;

uint8_t
csblob_get_hashtype(struct cs_blob const * const blob)
{
    return blob->csb_hashtype != ((void*)0) ? cs_hash_type(blob->csb_hashtype) : 0;
}
