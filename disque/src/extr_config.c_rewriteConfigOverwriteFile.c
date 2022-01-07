
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef char* sds ;


 int O_CREAT ;
 int O_RDWR ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 int ftruncate (int,int) ;
 int memset (char*,char,int) ;
 int open (char*,int,int) ;
 char* sdsdup (char*) ;
 int sdsfree (char*) ;
 char* sdsgrowzero (char*,int) ;
 int sdslen (char*) ;
 int strlen (char*) ;
 int write (int,char*,int ) ;

int rewriteConfigOverwriteFile(char *configfile, sds content) {
    int retval = 0;
    int fd = open(configfile,O_RDWR|O_CREAT,0644);
    int content_size = sdslen(content), padding = 0;
    struct stat sb;
    sds content_padded;



    if (fd == -1) return -1;
    if (fstat(fd,&sb) == -1) {
        close(fd);
        return -1;
    }


    content_padded = sdsdup(content);
    if (content_size < sb.st_size) {


        padding = sb.st_size - content_size;
        content_padded = sdsgrowzero(content_padded,sb.st_size);
        content_padded[content_size] = '\n';
        memset(content_padded+content_size+1,'#',padding-1);
    }


    if (write(fd,content_padded,strlen(content_padded)) == -1) {
        retval = -1;
        goto cleanup;
    }


    if (padding) {
        if (ftruncate(fd,content_size) == -1) {

        }
    }

cleanup:
    sdsfree(content_padded);
    close(fd);
    return retval;
}
