
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;
typedef scalar_t__ GhbType ;


 scalar_t__ GHB_ARRAY ;
 scalar_t__ GHB_BOOL ;
 scalar_t__ GHB_DICT ;
 scalar_t__ GHB_DOUBLE ;
 scalar_t__ GHB_INT ;
 scalar_t__ GHB_STRING ;
 int g_debug (char*,char const*) ;

void
debug_show_type(GhbType tp)
{
    const gchar *str = "unknown";
    if (tp == GHB_STRING)
    {
        str ="string";
    }
    else if (tp == GHB_INT)
    {
        str ="int";
    }
    else if (tp == GHB_DOUBLE)
    {
        str ="double";
    }
    else if (tp == GHB_BOOL)
    {
        str ="bool";
    }
    else if (tp == GHB_ARRAY)
    {
        str ="array";
    }
    else if (tp == GHB_DICT)
    {
        str ="dict";
    }
    g_debug("Type %s", str);
}
