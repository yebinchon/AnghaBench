
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_3__ {int message; } ;
typedef int GMarkupParseContext ;
typedef TYPE_1__ GError ;


 int g_warning (char*,int ) ;

__attribute__((used)) static void
parse_error(GMarkupParseContext *ctx, GError *error, gpointer ud)
{
    g_warning("Plist parse error: %s", error->message);
}
