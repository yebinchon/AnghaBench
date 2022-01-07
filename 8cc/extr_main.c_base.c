
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (int ) ;
 int strdup (char*) ;

__attribute__((used)) static char *base(char *path) {
    return basename(strdup(path));
}
