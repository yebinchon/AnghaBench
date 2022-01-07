
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* av_hash_names (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void usage(void)
{
    int i = 0;
    const char *name;

    printf("usage: ffhash [b64:]algorithm [input]...\n");
    printf("Supported hash algorithms:");
    do {
        name = av_hash_names(i);
        if (name)
            printf(" %s", name);
        i++;
    } while(name);
    printf("\n");
}
