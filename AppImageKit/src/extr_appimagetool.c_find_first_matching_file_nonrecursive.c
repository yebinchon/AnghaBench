
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GDir ;


 int G_FILE_TEST_IS_REGULAR ;
 int errno ;
 int * g_build_filename (int const*,int const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (int const*,int ,int *) ;
 int * g_dir_read_name (int *) ;
 scalar_t__ g_file_test (int *,int ) ;
 scalar_t__ g_pattern_match_simple (int const*,int const*) ;
 int g_strerror (int ) ;
 int g_warning (char*,int const*,int ) ;

gchar* find_first_matching_file_nonrecursive(const gchar *real_path, const gchar *pattern) {
    GDir *dir;
    gchar *full_name;
    dir = g_dir_open(real_path, 0, ((void*)0));
    if (dir != ((void*)0)) {
        const gchar *entry;
        while ((entry = g_dir_read_name(dir)) != ((void*)0)) {
            full_name = g_build_filename(real_path, entry, ((void*)0));
            if (g_file_test(full_name, G_FILE_TEST_IS_REGULAR)) {
                if(g_pattern_match_simple(pattern, entry))
                    return(full_name);
            }
        }
        g_dir_close(dir);
    }
    else {
        g_warning("%s: %s", real_path, g_strerror(errno));
    }
    return ((void*)0);
}
