
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GError ;


 int G_FILE_ERROR ;
 int G_STRLOC ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int g_file_error_from_errno (int ) ;
 int g_free (int *) ;
 int g_set_error (int **,int ,int ,char*,int ,char const*,int *,...) ;
 int * g_strdup_printf (char*,int ) ;
 int g_strerror (int ) ;
 int getpid () ;
 int open (char const*,int,int) ;
 int strlen (int *) ;
 scalar_t__ write (int,int *,int ) ;

int chassis_frontend_write_pidfile(const char *pid_file, GError **gerr) {
 int fd;
 int ret = 0;

 gchar *pid_str;





 if (-1 == (fd = open(pid_file, O_WRONLY|O_TRUNC|O_CREAT, 0600))) {
  g_set_error(gerr,
    G_FILE_ERROR,
    g_file_error_from_errno(errno),
    "%s: open(%s) failed: %s",
    G_STRLOC,
    pid_file,
    g_strerror(errno));

  return -1;
 }

 pid_str = g_strdup_printf("%d", getpid());

 if (write(fd, pid_str, strlen(pid_str)) < 0) {
  g_set_error(gerr,
    G_FILE_ERROR,
    g_file_error_from_errno(errno),
    "%s: write(%s) of %s failed: %s",
    G_STRLOC,
    pid_file,
    pid_str,
    g_strerror(errno));
  ret = -1;
 }
 g_free(pid_str);

 close(fd);

 return ret;
}
