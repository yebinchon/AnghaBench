
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int gchar ;
typedef int FILE ;


 int F_TLOCK ;
 int O_CREAT ;
 int O_RDWR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int fclose (int *) ;
 int fprintf (int *,char*,int) ;
 int * g_fopen (int *,char*) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int *,int) ;
 int getpid () ;
 int * ghb_get_user_config_dir (int *) ;
 int lockf (int,int ,int ) ;
 int open (int *,int,int) ;

void
ghb_write_pid_file()
{

    gchar *config, *path;
    pid_t pid;
    FILE *fp;
    int fd;

    pid = getpid();
    config = ghb_get_user_config_dir(((void*)0));
    path = g_strdup_printf ("%s/ghb.pid.%d", config, pid);
    fp = g_fopen(path, "w");

    if (fp != ((void*)0))
    {
        fprintf(fp, "%d\n", pid);
        fclose(fp);
    }

    fd = open(path, O_RDWR|O_CREAT, S_IRUSR|S_IWUSR);
    if (fd >= 0)
    {
        lockf(fd, F_TLOCK, 0);
    }

    g_free(config);
    g_free(path);

}
