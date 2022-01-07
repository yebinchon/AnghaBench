
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int guint ;
struct TYPE_2__ {void* group; void* keyfile; } ;
typedef int GValue ;
typedef int GParamSpec ;
typedef int GObject ;




 TYPE_1__* YUI_INPUT_ENTRY (int *) ;
 void* g_value_get_pointer (int const*) ;

__attribute__((used)) static void yui_input_entry_set_property(GObject * object, guint property_id,
  const GValue * value, GParamSpec * pspec) {
 switch(property_id) {
  case 128:
   YUI_INPUT_ENTRY(object)->keyfile = g_value_get_pointer(value);
   break;
  case 129:
   YUI_INPUT_ENTRY(object)->group = g_value_get_pointer(value);
   break;
 }
}
