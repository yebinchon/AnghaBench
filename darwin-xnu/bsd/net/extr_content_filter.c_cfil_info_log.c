
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_info {int cfi_so; int cfi_sock_id; int * cfi_hash_entry; } ;


 int cfil_hash_entry_log (int,int ,int *,int ,char const*) ;
 int cfil_inp_log (int,int ,char const*) ;

__attribute__((used)) static void
cfil_info_log(int level, struct cfil_info *cfil_info, const char* msg)
{
 if (cfil_info == ((void*)0))
  return;

 if (cfil_info->cfi_hash_entry != ((void*)0))
  cfil_hash_entry_log(level, cfil_info->cfi_so, cfil_info->cfi_hash_entry, cfil_info->cfi_sock_id, msg);
 else
  cfil_inp_log(level, cfil_info->cfi_so, msg);
}
