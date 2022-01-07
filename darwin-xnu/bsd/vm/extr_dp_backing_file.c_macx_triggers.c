
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macx_triggers_args {int flags; } ;


 int ENOTSUP ;
 int SWAP_COMPACT_DISABLE ;
 int SWAP_COMPACT_ENABLE ;
 int macx_backing_store_compaction (int) ;

int
macx_triggers(
 struct macx_triggers_args *args)
{
 int flags = args->flags;

 if (flags & (SWAP_COMPACT_DISABLE | SWAP_COMPACT_ENABLE))
  return (macx_backing_store_compaction(flags));

 return ENOTSUP;
}
