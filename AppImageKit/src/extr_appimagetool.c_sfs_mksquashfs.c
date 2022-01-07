
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef char gchar ;


 char* APPIMAGEIGNORE ;
 int F_OK ;
 scalar_t__ access (char*,int ) ;
 char* exclude_file ;
 int execvp (char*,char**) ;
 int fork () ;
 char* g_strdup_printf (char*,int) ;
 char* pathToMksquashfs ;
 int perror (char*) ;
 int printf (char*,...) ;
 char* sqfs_comp ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ verbose ;
 int waitpid (int,int*,int ) ;

int sfs_mksquashfs(char *source, char *destination, int offset) {
    pid_t pid = fork();

    if (pid == -1) {

        return(-1);
    } else if (pid > 0) {
        int status;
        waitpid(pid, &status, 0);
    } else {

        gchar* offset_string;
        offset_string = g_strdup_printf("%i", offset);

        char* args[32];
        bool use_xz = strcmp(sqfs_comp, "xz") >= 0;

        int i = 0;

        args[i++] = "mksquashfs";



        args[i++] = source;
        args[i++] = destination;
        args[i++] = "-offset";
        args[i++] = offset_string;
        args[i++] = "-comp";

        if (use_xz)
            args[i++] = "xz";
        else
            args[i++] = sqfs_comp;

        args[i++] = "-root-owned";
        args[i++] = "-noappend";

        if (use_xz) {


            args[i++] = "-Xdict-size";
            args[i++] = "100%";
            args[i++] = "-b";
            args[i++] = "16384";
        }


        if (access(APPIMAGEIGNORE, F_OK) >= 0) {
            printf("Including %s", APPIMAGEIGNORE);
            args[i++] = "-wildcards";
            args[i++] = "-ef";


            char* buf = strdup(APPIMAGEIGNORE);
            args[i++] = buf;
        }


        if (exclude_file != 0 && strlen(exclude_file) > 0) {
            if (access(exclude_file, F_OK) < 0) {
                printf("WARNING: exclude file %s not found!", exclude_file);
                return -1;
            }

            args[i++] = "-wildcards";
            args[i++] = "-ef";
            args[i++] = exclude_file;
        }

        args[i++] = "-mkfs-time";
        args[i++] = "0";

        args[i++] = 0;

        if (verbose) {
            printf("mksquashfs commandline: ");
            for (char** t = args; *t != 0; t++) {
                printf("%s ", *t);
            }
            printf("\n");
        }


        execvp("mksquashfs", args);




        perror("execlp");
        return -1;
    }
    return 0;
}
