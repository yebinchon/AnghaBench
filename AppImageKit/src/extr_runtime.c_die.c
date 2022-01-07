
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_EXECERROR ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void die(const char *msg) {
    fprintf(stderr, "%s\n", msg);
    exit(EXIT_EXECERROR);
}
