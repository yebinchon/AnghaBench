
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_HEIGHT ;
 int DEFAULT_WIDTH ;
 int exit (int) ;
 int printf (char*,char const*,int,int) ;

void print_help(const char* name)
{
    printf("usage: %s file|dir [w=%i] [h=%i]\n"
            "generate a test video stream\n",
            name, DEFAULT_WIDTH, DEFAULT_HEIGHT);
    exit(1);
}
