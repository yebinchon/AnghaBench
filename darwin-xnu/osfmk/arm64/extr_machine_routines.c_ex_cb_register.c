
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kern_return_t ;
typedef int * ex_cb_t ;
struct TYPE_3__ {void* refcon; int * cb; } ;
typedef TYPE_1__ ex_cb_info_t ;
typedef size_t ex_cb_class_t ;


 size_t EXCB_CLASS_MAX ;
 int KERN_FAILURE ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 TYPE_1__* ex_cb_info ;

kern_return_t ex_cb_register(
 ex_cb_class_t cb_class,
 ex_cb_t cb,
 void *refcon)
{
 ex_cb_info_t *pInfo = &ex_cb_info[cb_class];

 if ((((void*)0) == cb) || (cb_class >= EXCB_CLASS_MAX))
 {
  return KERN_INVALID_VALUE;
 }

 if (((void*)0) == pInfo->cb)
 {
  pInfo->cb = cb;
  pInfo->refcon = refcon;
  return KERN_SUCCESS;
 }
 return KERN_FAILURE;
}
