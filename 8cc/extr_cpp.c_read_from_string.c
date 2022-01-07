
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;


 int emit_toplevel (int ) ;
 int make_file_string (char*) ;
 int * read_toplevels () ;
 int stream_stash (int ) ;
 int stream_unstash () ;
 int vec_get (int *,int) ;
 int vec_len (int *) ;

void read_from_string(char *buf) {
    stream_stash(make_file_string(buf));
    Vector *toplevels = read_toplevels();
    for (int i = 0; i < vec_len(toplevels); i++)
        emit_toplevel(vec_get(toplevels, i));
    stream_unstash();
}
