
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int buffers ;
 int errno ;
 int error (char*,char*,char*) ;
 int * fopen (char*,char*) ;
 int make_file (int *,char*) ;
 int make_vector () ;
 int * stdin ;
 int strcmp (char*,char*) ;
 int stream_push (int ) ;
 char* strerror (int ) ;
 int vec_push (int ,int ) ;

void lex_init(char *filename) {
    vec_push(buffers, make_vector());
    if (!strcmp(filename, "-")) {
        stream_push(make_file(stdin, "-"));
        return;
    }
    FILE *fp = fopen(filename, "r");
    if (!fp)
        error("Cannot open %s: %s", filename, strerror(errno));
    stream_push(make_file(fp, filename));
}
