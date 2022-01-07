
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 int KDBG_VFS_LOOKUP_FLAG_LOOKUP ;
 int kdebug_vfs_lookup (long*,int,void*,int ) ;

void
kdebug_lookup_gen_events(long *dbg_parms, int dbg_namelen, void *dp,
  boolean_t lookup)
{
 kdebug_vfs_lookup(dbg_parms, dbg_namelen, dp,
   lookup ? KDBG_VFS_LOOKUP_FLAG_LOOKUP : 0);
}
