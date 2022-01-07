
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int YuiResolutionClass ;
struct TYPE_3__ {int get_property; int set_property; } ;
typedef int GParamSpec ;


 TYPE_1__* G_OBJECT_CLASS (int *) ;
 int G_PARAM_READABLE ;
 int G_PARAM_WRITABLE ;
 int PROP_GROUP ;
 int PROP_KEYFILE ;
 int g_object_class_install_property (TYPE_1__*,int ,int *) ;
 int * g_param_spec_pointer (char*,int ,int ,int) ;
 int yui_resolution_get_property ;
 int yui_resolution_set_property ;

__attribute__((used)) static void yui_resolution_class_init (YuiResolutionClass *klass) {
 GParamSpec * param;

 G_OBJECT_CLASS(klass)->set_property = yui_resolution_set_property;
 G_OBJECT_CLASS(klass)->get_property = yui_resolution_get_property;

 param = g_param_spec_pointer("key-file", 0, 0, G_PARAM_READABLE | G_PARAM_WRITABLE);
 g_object_class_install_property(G_OBJECT_CLASS(klass), PROP_KEYFILE, param);

 param = g_param_spec_pointer("group", 0, 0, G_PARAM_READABLE | G_PARAM_WRITABLE);
 g_object_class_install_property(G_OBJECT_CLASS(klass), PROP_GROUP, param);
}
