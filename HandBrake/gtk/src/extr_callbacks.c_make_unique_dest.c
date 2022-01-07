
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_7__ {int str; } ;
typedef TYPE_1__ GString ;


 int G_FILE_TEST_EXISTS ;
 int TRUE ;
 scalar_t__ g_file_test (int ,int ) ;
 int g_string_append_printf (TYPE_1__*,char*,int) ;
 int g_string_free (TYPE_1__*,int ) ;
 TYPE_1__* g_string_new (int ) ;
 int g_string_printf (TYPE_1__*,char*,int const*,int ,int,...) ;

__attribute__((used)) static void
make_unique_dest(const gchar *dest_dir, GString *str, const gchar * extension)
{
    GString * uniq = g_string_new(str->str);
    int copy = 0;

    g_string_printf(uniq, "%s/%s.%s", dest_dir, str->str, extension);
    while (g_file_test(uniq->str, G_FILE_TEST_EXISTS))
    {
        g_string_printf(uniq, "%s/%s (%d).%s", dest_dir, str->str, ++copy, extension);
    }
    if (copy)
    {
        g_string_append_printf(str, " (%d)", copy);
    }
    g_string_free(uniq, TRUE);
}
