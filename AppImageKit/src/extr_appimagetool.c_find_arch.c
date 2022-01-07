
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GDir ;


 int G_FILE_TEST_IS_DIR ;
 int G_FILE_TEST_IS_EXECUTABLE ;
 int G_FILE_TEST_IS_SYMLINK ;
 int errno ;
 int * g_build_filename (int const*,int const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (int const*,int ,int *) ;
 int * g_dir_read_name (int *) ;
 scalar_t__ g_file_test (int *,int ) ;
 scalar_t__ g_pattern_match_simple (int const*,int const*) ;
 int g_strerror (int ) ;
 int g_warning (char*,int const*,int ) ;
 int guess_arch_of_file (int *,int*) ;

void find_arch(const gchar *real_path, const gchar *pattern, bool* archs) {
    GDir *dir;
    gchar *full_name;
    dir = g_dir_open(real_path, 0, ((void*)0));
    if (dir != ((void*)0)) {
        const gchar *entry;
        while ((entry = g_dir_read_name(dir)) != ((void*)0)) {
            full_name = g_build_filename(real_path, entry, ((void*)0));
            if (g_file_test(full_name, G_FILE_TEST_IS_SYMLINK)) {
            } else if (g_file_test(full_name, G_FILE_TEST_IS_DIR)) {
                find_arch(full_name, pattern, archs);
            } else if (g_file_test(full_name, G_FILE_TEST_IS_EXECUTABLE) || g_pattern_match_simple(pattern, entry) ) {
                guess_arch_of_file(full_name, archs);
            }
        }
        g_dir_close(dir);
    }
    else {
        g_warning("%s: %s", real_path, g_strerror(errno));
    }
}
