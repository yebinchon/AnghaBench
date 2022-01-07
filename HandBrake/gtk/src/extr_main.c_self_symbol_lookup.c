
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gpointer ;
typedef int gchar ;
typedef int GModule ;
typedef int GCallback ;


 int * g_module_open (int *,int ) ;
 int g_module_symbol (int *,int const*,int **) ;

__attribute__((used)) static GCallback
self_symbol_lookup(const gchar * symbol_name)
{
    static GModule *module = ((void*)0);
    gpointer symbol = ((void*)0);

    if (!module)
        module = g_module_open(((void*)0), 0);

    g_module_symbol(module, symbol_name, &symbol);
    return (GCallback) symbol;
}
