
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int * typefilter_t ;
struct TYPE_2__ {int kdebug_iops; } ;


 int DBG_TRACE ;
 int EINVAL ;
 int ENOMEM ;
 size_t KDBG_TYPEFILTER_BITMAP_SIZE ;
 int KD_CALLBACK_TYPEFILTER_CHANGED ;
 int copyin (int ,int *,size_t) ;
 TYPE_1__ kd_ctrl_page ;
 int kdbg_enable_typefilter () ;
 int kdbg_initialize_typefilter (int *) ;
 int kdbg_iop_list_callback (int ,int ,int ) ;
 int kdbg_typefilter ;
 int ktrace_assert_lock_held () ;
 int typefilter_allow_class (int *,int ) ;
 int typefilter_copy (int ,int *) ;
 int * typefilter_create () ;
 int typefilter_deallocate (int *) ;

__attribute__((used)) static int
kdbg_copyin_typefilter(user_addr_t addr, size_t size)
{
 int ret = ENOMEM;
 typefilter_t tf;

 ktrace_assert_lock_held();

 if (size != KDBG_TYPEFILTER_BITMAP_SIZE) {
  return EINVAL;
 }

 if ((tf = typefilter_create())) {
  if ((ret = copyin(addr, tf, KDBG_TYPEFILTER_BITMAP_SIZE)) == 0) {

   typefilter_allow_class(tf, DBG_TRACE);
   if (!kdbg_typefilter) {
    if ((ret = kdbg_initialize_typefilter(tf))) {
     return ret;
    }
    tf = ((void*)0);
   } else {
    typefilter_copy(kdbg_typefilter, tf);
   }

   kdbg_enable_typefilter();
   kdbg_iop_list_callback(kd_ctrl_page.kdebug_iops, KD_CALLBACK_TYPEFILTER_CHANGED, kdbg_typefilter);
  }

  if (tf)
   typefilter_deallocate(tf);
 }

 return ret;
}
