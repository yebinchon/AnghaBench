
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GDir ;


 int F_TLOCK ;
 int G_FILE_TEST_IS_DIR ;
 int O_RDWR ;
 int close (int) ;
 int g_dir_close (int *) ;
 int * g_dir_open (int *,int ,int *) ;
 int * g_dir_read_name (int *) ;
 scalar_t__ g_file_test (int *,int ) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int *,int const*) ;
 int g_unlink (int *) ;
 int * ghb_get_user_config_dir (int *) ;
 int lockf (int,int ,int ) ;
 int open (int *,int ) ;
 int sscanf (int const*,char*,int*) ;
 scalar_t__ strncmp (int const*,char*,int) ;

int
ghb_find_pid_file()
{
    const gchar *file;
    gchar *config;

    config = ghb_get_user_config_dir(((void*)0));

    if (g_file_test(config, G_FILE_TEST_IS_DIR))
    {
        GDir *gdir;
        gdir = g_dir_open(config, 0, ((void*)0));
        file = g_dir_read_name(gdir);
        while (file)
        {
            if (strncmp(file, "ghb.pid.", 8) == 0)
            {
                gchar *path;
                int pid;

                sscanf(file, "ghb.pid.%d", &pid);
                path = g_strdup_printf("%s/%s", config, file);


                int fd, lock = 1;

                fd = open(path, O_RDWR);
                if (fd >= 0)
                {
                    lock = lockf(fd, F_TLOCK, 0);
                }
                if (lock == 0)
                {
                    close(fd);
                    g_dir_close(gdir);
                    g_unlink(path);
                    g_free(path);
                    g_free(config);
                    return pid;
                }
                g_free(path);
                close(fd);







            }
            file = g_dir_read_name(gdir);
        }
        g_dir_close(gdir);
    }
    g_free(config);
    return -1;
}
