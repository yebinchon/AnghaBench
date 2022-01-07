
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;
typedef int gchar ;
typedef int GError ;


 int G_FILE_ERROR ;
 int G_FILE_ERROR_INVAL ;
 int G_FILE_ERROR_PERM ;
 int S_IFMT ;
 int S_IFREG ;
 int errno ;
 int g_file_error_from_errno (int ) ;
 int g_set_error (int **,int ,int ,char*,int const*,...) ;
 int g_strerror (int ) ;
 int stat (int const*,struct stat*) ;

int chassis_filemode_check_full(const gchar *filename, int required_filemask, GError **gerr) {

 struct stat stbuf;
 mode_t fmode;

 if (stat(filename, &stbuf) == -1) {
  g_set_error(gerr, G_FILE_ERROR, g_file_error_from_errno(errno),
    "cannot stat(%s): %s", filename,
    g_strerror(errno));
  return -1;
 }

 fmode = stbuf.st_mode;
 if ((fmode & S_IFMT) != S_IFREG) {
  g_set_error(gerr, G_FILE_ERROR, G_FILE_ERROR_INVAL,
    "%s isn't a regular file", filename);
  return -1;
 }

 if ((fmode & required_filemask) != 0) {
  g_set_error(gerr, G_FILE_ERROR, G_FILE_ERROR_PERM,
    "permissions of %s aren't secure (0660 or stricter required)", filename);
  return 1;
 }




 return 0;
}
