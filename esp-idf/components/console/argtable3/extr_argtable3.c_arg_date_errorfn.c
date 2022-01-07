
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tm ;
struct tm {int dummy; } ;
struct TYPE_2__ {char* shortopts; char* longopts; char* datatype; } ;
struct arg_date {int format; TYPE_1__ hdr; } ;
typedef int buff ;
typedef int FILE ;





 int arg_print_option (int *,char const*,char const*,char const*,char*) ;
 int arg_strptime (char*,char*,struct tm*) ;
 int fprintf (int *,char*,char const*) ;
 int fputs (char*,int *) ;
 int memset (struct tm*,int ,int) ;
 int printf (char*,char*) ;
 int strftime (char*,int,int ,struct tm*) ;

__attribute__((used)) static void arg_date_errorfn(
    struct arg_date *parent,
    FILE *fp,
    int errorcode,
    const char *argval,
    const char *progname)
{
    const char *shortopts = parent->hdr.shortopts;
    const char *longopts = parent->hdr.longopts;
    const char *datatype = parent->hdr.datatype;


    argval = argval ? argval : "";

    fprintf(fp, "%s: ", progname);
    switch(errorcode)
    {
    case 128:
        fputs("missing option ", fp);
        arg_print_option(fp, shortopts, longopts, datatype, "\n");
        break;

    case 129:
        fputs("excess option ", fp);
        arg_print_option(fp, shortopts, longopts, argval, "\n");
        break;

    case 130:
    {
        struct tm tm;
        char buff[200];

        fprintf(fp, "illegal timestamp format \"%s\"\n", argval);
        memset(&tm, 0, sizeof(tm));
        arg_strptime("1999-12-31 23:59:59", "%F %H:%M:%S", &tm);
        strftime(buff, sizeof(buff), parent->format, &tm);
        printf("correct format is \"%s\"\n", buff);
        break;
    }
    }
}
