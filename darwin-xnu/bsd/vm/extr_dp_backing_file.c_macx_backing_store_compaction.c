
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int SWAP_COMPACT_DISABLE ;
 int SWAP_COMPACT_ENABLE ;
 int TRUE ;
 int compressor_store_stop_compaction ;
 int kauth_cred_get () ;
 int kprintf (char*) ;
 int suser (int ,int ) ;

int
macx_backing_store_compaction(int flags)
{
 int error;

 if ((error = suser(kauth_cred_get(), 0)))
  return error;

 if (flags & SWAP_COMPACT_DISABLE) {
  compressor_store_stop_compaction = TRUE;

  kprintf("compressor_store_stop_compaction = TRUE\n");

 } else if (flags & SWAP_COMPACT_ENABLE) {
  compressor_store_stop_compaction = FALSE;

  kprintf("compressor_store_stop_compaction = FALSE\n");
 }

 return 0;
}
