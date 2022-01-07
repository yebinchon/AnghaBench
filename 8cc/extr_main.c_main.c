
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int Vector ;
typedef int Node ;


 int asmfile ;
 scalar_t__ atexit (int ) ;
 int base (int ) ;
 int buf_body (int ) ;
 scalar_t__ buf_len (int ) ;
 int close_output_file () ;
 int cpp_init () ;
 int cppdefs ;
 scalar_t__ cpponly ;
 int delete_temp_files ;
 int dumpasm ;
 scalar_t__ dumpast ;
 int emit_toplevel (int *) ;
 int error (char*) ;
 int execlp (char*,char*,char*,scalar_t__,char*,int ,char*) ;
 scalar_t__ fork () ;
 int infile ;
 int lex_init (int ) ;
 char* node2s (int *) ;
 int open_asmfile () ;
 scalar_t__ outfile ;
 int parse_init () ;
 int parseopt (int,char**) ;
 int perror (char*) ;
 int preprocess () ;
 int printf (char*,char*) ;
 int read_from_string (int ) ;
 int * read_toplevels () ;
 scalar_t__ replace_suffix (int ,char) ;
 int set_output_file (int ) ;
 int setbuf (int ,int *) ;
 int stdout ;
 int * vec_get (int *,int) ;
 int vec_len (int *) ;
 int waitpid (scalar_t__,int*,int ) ;

int main(int argc, char **argv) {
    setbuf(stdout, ((void*)0));
    if (atexit(delete_temp_files))
        perror("atexit");
    parseopt(argc, argv);
    lex_init(infile);
    cpp_init();
    parse_init();
    set_output_file(open_asmfile());
    if (buf_len(cppdefs) > 0)
        read_from_string(buf_body(cppdefs));

    if (cpponly)
        preprocess();

    Vector *toplevels = read_toplevels();
    for (int i = 0; i < vec_len(toplevels); i++) {
        Node *v = vec_get(toplevels, i);
        if (dumpast)
            printf("%s", node2s(v));
        else
            emit_toplevel(v);
    }

    close_output_file();

    if (!dumpast && !dumpasm) {
        if (!outfile)
            outfile = replace_suffix(base(infile), 'o');
        pid_t pid = fork();
        if (pid < 0) perror("fork");
        if (pid == 0) {
            execlp("as", "as", "-o", outfile, "-c", asmfile, (char *)((void*)0));
            perror("execl failed");
        }
        int status;
        waitpid(pid, &status, 0);
        if (status < 0)
            error("as failed");
    }
    return 0;
}
