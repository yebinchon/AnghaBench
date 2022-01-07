
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fputs (char const*,int ) ;
 int putc (char,int ) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void
die(int code, int err, const char *msg)
{
    putc('\n', stderr);

    if (msg && *msg) {
        fputs(msg, stderr);
        fputs(": ", stderr);
    }

    fputs(strerror(err), stderr);
    putc('\n', stderr);
    exit(code);
}
