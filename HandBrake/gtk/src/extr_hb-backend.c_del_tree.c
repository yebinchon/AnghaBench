
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef scalar_t__ gboolean ;
typedef int GDir ;


 int G_FILE_TEST_IS_DIR ;
 scalar_t__ TRUE ;
 int g_dir_close (int *) ;
 int * g_dir_open (int const*,int ,int *) ;
 int * g_dir_read_name (int *) ;
 scalar_t__ g_file_test (int const*,int ) ;
 int g_free (int *) ;
 int g_rmdir (int const*) ;
 int * g_strdup_printf (char*,int const*,int const*) ;
 int g_unlink (int const*) ;

__attribute__((used)) static void
del_tree(const gchar *name, gboolean del_top)
{
    const gchar *file;

    if (g_file_test(name, G_FILE_TEST_IS_DIR))
    {
        GDir *gdir = g_dir_open(name, 0, ((void*)0));
        file = g_dir_read_name(gdir);
        while (file)
        {
            gchar *path;
            path = g_strdup_printf("%s/%s", name, file);
            del_tree(path, TRUE);
            g_free(path);
            file = g_dir_read_name(gdir);
        }
        if (del_top)
            g_rmdir(name);
        g_dir_close(gdir);
    }
    else
    {
        g_unlink(name);
    }
}
