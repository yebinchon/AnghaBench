
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _throttle_io_info_t {scalar_t__ throttle_alloc; int throttle_refcnt; } ;
typedef int SInt32 ;


 int DEBUG_ALLOC_THROTTLE_INFO (char*,struct _throttle_io_info_t*,int,struct _throttle_io_info_t*) ;
 int OSIncrementAtomic (int *) ;
 int panic (char*) ;

__attribute__((used)) static SInt32
throttle_info_ref(struct _throttle_io_info_t *info)
{
 SInt32 oldValue = OSIncrementAtomic(&info->throttle_refcnt);

 DEBUG_ALLOC_THROTTLE_INFO("refcnt = %d info = %p\n",
  info, (int)(oldValue -1), info );

 if (info->throttle_alloc && (oldValue == 0))
  panic("Taking a reference without calling create throttle info!\n");

 return oldValue;
}
