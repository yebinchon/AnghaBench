
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_info {int * cfi_entries; int cfi_rcv; int cfi_snd; } ;


 int MAX_CONTENT_FILTER ;
 int cfil_entry_verify (int *) ;
 int cfil_info_buf_verify (int *) ;

__attribute__((used)) static void
cfil_info_verify(struct cfil_info *cfil_info)
{
 int i;

 if (cfil_info == ((void*)0))
  return;

 cfil_info_buf_verify(&cfil_info->cfi_snd);
 cfil_info_buf_verify(&cfil_info->cfi_rcv);

 for (i = 0; i < MAX_CONTENT_FILTER; i++)
  cfil_entry_verify(&cfil_info->cfi_entries[i]);
}
