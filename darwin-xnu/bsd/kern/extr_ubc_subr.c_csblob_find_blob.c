
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct cs_blob {int csb_flags; int csb_mem_size; scalar_t__ csb_mem_kaddr; } ;
typedef int CS_GenericBlob ;


 int CS_VALID ;
 int const* csblob_find_blob_bytes (int const*,int ,int ,int ) ;

const CS_GenericBlob *
csblob_find_blob(struct cs_blob *csblob, uint32_t type, uint32_t magic)
{
 if ((csblob->csb_flags & CS_VALID) == 0)
  return ((void*)0);
 return csblob_find_blob_bytes((const uint8_t *)csblob->csb_mem_kaddr, csblob->csb_mem_size, type, magic);
}
