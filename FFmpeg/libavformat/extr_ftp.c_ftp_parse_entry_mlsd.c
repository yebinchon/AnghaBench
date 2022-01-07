
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; void* group_id; void* user_id; void* filemode; int modification_timestamp; int type; int name; } ;
typedef TYPE_1__ AVIODirEntry ;


 int AVIO_ENTRY_DIRECTORY ;
 int AVIO_ENTRY_FILE ;
 int AVIO_ENTRY_SYMBOLIC_LINK ;
 int av_strcasecmp (char*,char*) ;
 int av_strdup (char*) ;
 char* av_strtok (char*,char*,char**) ;
 int ff_dlog (int *,char*,char*) ;
 int ftp_parse_date (char*) ;
 int strtoll (char*,int *,int) ;
 void* strtoumax (char*,int *,int) ;

__attribute__((used)) static int ftp_parse_entry_mlsd(char *mlsd, AVIODirEntry *next)
{
    char *fact, *value;
    ff_dlog(((void*)0), "%s\n", mlsd);
    while(fact = av_strtok(mlsd, ";", &mlsd)) {
        if (fact[0] == ' ') {
            next->name = av_strdup(&fact[1]);
            continue;
        }
        fact = av_strtok(fact, "=", &value);
        if (!av_strcasecmp(fact, "type")) {
            if (!av_strcasecmp(value, "cdir") || !av_strcasecmp(value, "pdir"))
                return 1;
            if (!av_strcasecmp(value, "dir"))
                next->type = AVIO_ENTRY_DIRECTORY;
            else if (!av_strcasecmp(value, "file"))
                next->type = AVIO_ENTRY_FILE;
            else if (!av_strcasecmp(value, "OS.unix=slink:"))
                next->type = AVIO_ENTRY_SYMBOLIC_LINK;
        } else if (!av_strcasecmp(fact, "modify")) {
            next->modification_timestamp = ftp_parse_date(value);
        } else if (!av_strcasecmp(fact, "UNIX.mode")) {
            next->filemode = strtoumax(value, ((void*)0), 8);
        } else if (!av_strcasecmp(fact, "UNIX.uid") || !av_strcasecmp(fact, "UNIX.owner"))
            next->user_id = strtoumax(value, ((void*)0), 10);
        else if (!av_strcasecmp(fact, "UNIX.gid") || !av_strcasecmp(fact, "UNIX.group"))
            next->group_id = strtoumax(value, ((void*)0), 10);
        else if (!av_strcasecmp(fact, "size") || !av_strcasecmp(fact, "sizd"))
            next->size = strtoll(value, ((void*)0), 10);
    }
    return 0;
}
