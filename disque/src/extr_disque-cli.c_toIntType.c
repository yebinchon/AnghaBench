
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_HASH ;
 int TYPE_LIST ;
 int TYPE_NONE ;
 int TYPE_SET ;
 int TYPE_STRING ;
 int TYPE_ZSET ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int toIntType(char *key, char *type) {
    if(!strcmp(type, "string")) {
        return TYPE_STRING;
    } else if(!strcmp(type, "list")) {
        return TYPE_LIST;
    } else if(!strcmp(type, "set")) {
        return TYPE_SET;
    } else if(!strcmp(type, "hash")) {
        return TYPE_HASH;
    } else if(!strcmp(type, "zset")) {
        return TYPE_ZSET;
    } else if(!strcmp(type, "none")) {
        return TYPE_NONE;
    } else {
        fprintf(stderr, "Unknown type '%s' for key '%s'\n", type, key);
        exit(1);
    }
}
