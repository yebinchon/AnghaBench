
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GSourceFunc ;
typedef int GSource ;
typedef int GMainContext ;


 scalar_t__ delayed_store_prefs ;
 int * g_main_context_default () ;
 int * g_main_context_find_source_by_id (int *,scalar_t__) ;
 int g_source_destroy (int *) ;
 scalar_t__ g_timeout_add_seconds (int,int ,int *) ;
 scalar_t__ prefs_timeout_id ;

__attribute__((used)) static void
store_prefs(void)
{
    if (prefs_timeout_id != 0)
    {
        GMainContext *mc;
        GSource *source;

        mc = g_main_context_default();
        source = g_main_context_find_source_by_id(mc, prefs_timeout_id);
        if (source != ((void*)0))
            g_source_destroy(source);
    }
    prefs_timeout_id = g_timeout_add_seconds(1, (GSourceFunc)delayed_store_prefs, ((void*)0));
}
