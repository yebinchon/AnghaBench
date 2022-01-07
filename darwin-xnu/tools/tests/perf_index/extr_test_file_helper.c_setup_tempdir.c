
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mkdtemp (char*) ;
 int strcpy (char*,char*) ;

char* setup_tempdir(char* buf) {
    strcpy(buf, "/tmp/perfindex.XXXXXX");
    return mkdtemp(buf);
}
