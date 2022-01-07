
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int DIR ;


 int ENOENT ;
 int ENOTDIR ;
 int closedir (int *) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int * opendir (char*) ;
 int perror (char*) ;
 struct dirent* readdir (int *) ;
 int rmdir (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (int) ;
 int strlen (char*) ;
 int unlink (char*) ;

__attribute__((used)) static void
rmtree(char *path)
{
    int r = unlink(path);
    if (r == 0 || errno == ENOENT) {
        return;
    }
    int unlinkerr = errno;

    DIR *d = opendir(path);
    if (!d) {
        if (errno == ENOTDIR) {
            fprintf(stderr, "ct: unlink: %s\n", strerror(unlinkerr));
        } else {
            perror("ct: opendir");
        }
        fprintf(stderr, "ct: path %s\n", path);
        return;
    }
    struct dirent *ent;
    while ((ent = readdir(d))) {
        if (strcmp(ent->d_name, ".") == 0 || strcmp(ent->d_name, "..") == 0) {
            continue;
        }
        int n = strlen(path) + 1 + strlen(ent->d_name);
        char s[n+1];
        sprintf(s, "%s/%s", path, ent->d_name);
        rmtree(s);
    }
    closedir(d);
    r = rmdir(path);
    if (r == -1) {
        perror("ct: rmdir");
        fprintf(stderr, "ct: path %s\n", path);
    }
}
