
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;







 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void arg_end_errorfn(
    void *parent,
    FILE *fp,
    int error,
    const char *argval,
    const char *progname)
{

    (void)parent;

    progname = progname ? progname : "";
    argval = argval ? argval : "";

    fprintf(fp, "%s: ", progname);
    switch(error)
    {
    case 132:
        fputs("too many errors to display", fp);
        break;
    case 130:
        fputs("insufficent memory", fp);
        break;
    case 128:
        fprintf(fp, "unexpected argument \"%s\"", argval);
        break;
    case 129:
        fprintf(fp, "option \"%s\" requires an argument", argval);
        break;
    case 131:
        fprintf(fp, "invalid option \"%s\"", argval);
        break;
    default:
        fprintf(fp, "invalid option \"-%c\"", error);
        break;
    }

    fputc('\n', fp);
}
