
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint ;
typedef int GValue ;
typedef int GParamSpec ;
typedef int GObject ;


 int G_OBJECT_WARN_INVALID_PROPERTY_ID (int *,int,int *) ;

__attribute__((used)) static void
custom_cell_renderer_button_set_property (GObject *object,
                                          guint param_id,
                                          const GValue *value,
                                          GParamSpec *pspec)
{


    switch (param_id)
    {
        default:
            G_OBJECT_WARN_INVALID_PROPERTY_ID(object, param_id, pspec);
            break;
    }
}
