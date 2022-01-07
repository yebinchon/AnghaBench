
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ asmfile ;
 int base (int ) ;
 scalar_t__ dumpasm ;
 int * fopen (scalar_t__,char*) ;
 scalar_t__ format (char*) ;
 int infile ;
 int mkstemps (scalar_t__,int) ;
 scalar_t__ outfile ;
 int perror (char*) ;
 scalar_t__ replace_suffix (int ,char) ;
 int * stdout ;
 int strcmp (scalar_t__,char*) ;
 int tmpfiles ;
 int vec_push (int ,scalar_t__) ;

__attribute__((used)) static FILE *open_asmfile() {
    if (dumpasm) {
        asmfile = outfile ? outfile : replace_suffix(base(infile), 's');
    } else {
        asmfile = format("/tmp/8ccXXXXXX.s");
        if (!mkstemps(asmfile, 2))
            perror("mkstemps");
        vec_push(tmpfiles, asmfile);
    }
    if (!strcmp(asmfile, "-"))
        return stdout;
    FILE *fp = fopen(asmfile, "w");
    if (!fp)
        perror("fopen");
    return fp;
}
