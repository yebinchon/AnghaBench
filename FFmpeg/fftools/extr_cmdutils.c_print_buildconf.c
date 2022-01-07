
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char FFMPEG_CONFIGURATION ;
 int INDENT ;
 int av_log (int *,int,char*,char const*,...) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void print_buildconf(int flags, int level)
{
    const char *indent = flags & INDENT ? "  " : "";
    char str[] = { FFMPEG_CONFIGURATION };
    char *conflist, *remove_tilde, *splitconf;



    while ((conflist = strstr(str, " --")) != ((void*)0)) {
        strncpy(conflist, "~--", 3);
    }



    while ((remove_tilde = strstr(str, "pkg-config~")) != ((void*)0)) {
        strncpy(remove_tilde, "pkg-config ", 11);
    }

    splitconf = strtok(str, "~");
    av_log(((void*)0), level, "\n%sconfiguration:\n", indent);
    while (splitconf != ((void*)0)) {
        av_log(((void*)0), level, "%s%s%s\n", indent, indent, splitconf);
        splitconf = strtok(((void*)0), "~");
    }
}
