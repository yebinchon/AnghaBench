
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _throttle_io_info_t {scalar_t__ throttle_refcnt; int throttle_lock; scalar_t__ throttle_alloc; } ;
typedef int SInt32 ;


 int DEBUG_ALLOC_THROTTLE_INFO (char*,struct _throttle_io_info_t*,...) ;
 int FREE (struct _throttle_io_info_t*,int ) ;
 int M_TEMP ;
 int OSDecrementAtomic (scalar_t__*) ;
 int lck_mtx_destroy (int *,int ) ;
 int panic (char*) ;
 int throttle_lock_grp ;

__attribute__((used)) static int
throttle_info_rel(struct _throttle_io_info_t *info)
{
 SInt32 oldValue = OSDecrementAtomic(&info->throttle_refcnt);

 DEBUG_ALLOC_THROTTLE_INFO("refcnt = %d info = %p\n",
  info, (int)(oldValue -1), info );


 if (oldValue == 0)
  panic("throttle info ref cnt went negative!");





 if ((info->throttle_refcnt == 0) && (info->throttle_alloc)) {
  DEBUG_ALLOC_THROTTLE_INFO("Freeing info = %p\n", info);

  lck_mtx_destroy(&info->throttle_lock, throttle_lock_grp);
  FREE(info, M_TEMP);
 }
 return oldValue;
}
