
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * xt_panic_widget_func ;
typedef int kern_return_t ;
struct TYPE_2__ {char const* xtp_func_name; void** xtp_outval_p; int * xtp_func; int * xtp_context_p; } ;


 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 TYPE_1__ xt_panic_widgets ;

kern_return_t
xnupost_register_panic_widget(xt_panic_widget_func funcp, const char * funcname, void * context, void ** outval)
{
 if (xt_panic_widgets.xtp_context_p != ((void*)0) || xt_panic_widgets.xtp_func != ((void*)0))
  return KERN_RESOURCE_SHORTAGE;

 xt_panic_widgets.xtp_context_p = context;
 xt_panic_widgets.xtp_func = funcp;
 xt_panic_widgets.xtp_func_name = funcname;
 xt_panic_widgets.xtp_outval_p = outval;

 return KERN_SUCCESS;
}
