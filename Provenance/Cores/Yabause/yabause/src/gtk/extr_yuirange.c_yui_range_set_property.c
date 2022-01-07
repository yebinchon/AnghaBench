
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int guint ;
struct TYPE_2__ {void* items; void* key; void* group; void* keyfile; } ;
typedef int GValue ;
typedef int GParamSpec ;
typedef int GObject ;






 TYPE_1__* YUI_RANGE (int *) ;
 void* g_value_get_pointer (int const*) ;

__attribute__((used)) static void yui_range_set_property(GObject * object, guint property_id,
  const GValue * value, GParamSpec * pspec) {
 switch(property_id) {
  case 128:
   YUI_RANGE(object)->keyfile = g_value_get_pointer(value);
   break;
  case 131:
   YUI_RANGE(object)->group = g_value_get_pointer(value);
   break;
  case 129:
   YUI_RANGE(object)->key = g_value_get_pointer(value);
   break;
  case 130:
   YUI_RANGE(object)->items = g_value_get_pointer(value);
   break;
 }
}
