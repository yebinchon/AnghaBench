
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {int dummy; } ;


 scalar_t__ FALSE ;
 int SWAPFILENAME_INDEX_LEN ;
 int TRUE ;
 scalar_t__ VM_PAGER_COMPRESSOR_WITH_SWAP ;
 int compaction_swapper_inited ;
 scalar_t__ kalloc (int) ;
 int kfree (char*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,char*,int ) ;
 scalar_t__ strlen (char*) ;
 char* swapfilename ;
 int vm_compressor_catchup_threshold_divisor ;
 scalar_t__ vm_compressor_catchup_threshold_divisor_overridden ;
 int vm_compressor_majorcompact_threshold_divisor ;
 scalar_t__ vm_compressor_majorcompact_threshold_divisor_overridden ;
 int vm_compressor_minorcompact_threshold_divisor ;
 scalar_t__ vm_compressor_minorcompact_threshold_divisor_overridden ;
 scalar_t__ vm_compressor_mode ;
 int vm_compressor_unthrottle_threshold_divisor ;
 scalar_t__ vm_compressor_unthrottle_threshold_divisor_overridden ;
 int vm_swap_data_lock ;
 int vm_swapfile_close (int ,struct vnode*) ;
 int vm_swapfile_open (char*,struct vnode**) ;
 scalar_t__ vm_swappin_avail ;
 int vm_swappin_enabled ;
 scalar_t__ vnode_getswappin_avail (struct vnode*) ;
 scalar_t__ vnode_pager_isSSD (struct vnode*) ;
 int vnode_setswapmount (struct vnode*) ;

void
vm_compaction_swapper_do_init(void)
{
 struct vnode *vp;
 char *pathname;
 int namelen;

 if (compaction_swapper_inited)
  return;

 if (vm_compressor_mode != VM_PAGER_COMPRESSOR_WITH_SWAP) {
  compaction_swapper_inited = 1;
  return;
 }
 lck_mtx_lock(&vm_swap_data_lock);

 if ( !compaction_swapper_inited) {

  namelen = (int)strlen(swapfilename) + SWAPFILENAME_INDEX_LEN + 1;
  pathname = (char*)kalloc(namelen);
  memset(pathname, 0, namelen);
  snprintf(pathname, namelen, "%s%d", swapfilename, 0);

  vm_swapfile_open(pathname, &vp);

  if (vp) {

   if (vnode_pager_isSSD(vp) == FALSE) {
           if (vm_compressor_minorcompact_threshold_divisor_overridden == 0)
            vm_compressor_minorcompact_threshold_divisor = 15;
           if (vm_compressor_majorcompact_threshold_divisor_overridden == 0)
            vm_compressor_majorcompact_threshold_divisor = 18;
           if (vm_compressor_unthrottle_threshold_divisor_overridden == 0)
            vm_compressor_unthrottle_threshold_divisor = 24;
    if (vm_compressor_catchup_threshold_divisor_overridden == 0)
            vm_compressor_catchup_threshold_divisor = 30;
   }

   vnode_setswapmount(vp);
   vm_swappin_avail = vnode_getswappin_avail(vp);

   if (vm_swappin_avail)
    vm_swappin_enabled = TRUE;

   vm_swapfile_close((uint64_t)pathname, vp);
  }
  kfree(pathname, namelen);

  compaction_swapper_inited = 1;
 }
 lck_mtx_unlock(&vm_swap_data_lock);
}
