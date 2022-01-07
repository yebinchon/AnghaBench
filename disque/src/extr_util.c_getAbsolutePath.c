
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* sds ;
typedef int cwd ;


 int * getcwd (char*,int) ;
 char* sdscat (char*,char*) ;
 char* sdscatsds (char*,char*) ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 char* sdsnew (char*) ;
 int sdsrange (char*,int,int) ;
 char* sdstrim (char*,char*) ;

sds getAbsolutePath(char *filename) {
    char cwd[1024];
    sds abspath;
    sds relpath = sdsnew(filename);

    relpath = sdstrim(relpath," \r\n\t");
    if (relpath[0] == '/') return relpath;


    if (getcwd(cwd,sizeof(cwd)) == ((void*)0)) {
        sdsfree(relpath);
        return ((void*)0);
    }
    abspath = sdsnew(cwd);
    if (sdslen(abspath) && abspath[sdslen(abspath)-1] != '/')
        abspath = sdscat(abspath,"/");







    while (sdslen(relpath) >= 3 &&
           relpath[0] == '.' && relpath[1] == '.' && relpath[2] == '/')
    {
        sdsrange(relpath,3,-1);
        if (sdslen(abspath) > 1) {
            char *p = abspath + sdslen(abspath)-2;
            int trimlen = 1;

            while(*p != '/') {
                p--;
                trimlen++;
            }
            sdsrange(abspath,0,-(trimlen+1));
        }
    }


    abspath = sdscatsds(abspath,relpath);
    sdsfree(relpath);
    return abspath;
}
