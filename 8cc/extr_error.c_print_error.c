
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fileno (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isatty (int ) ;
 int stderr ;
 int vfprintf (int ,char*,int ) ;

__attribute__((used)) static void print_error(char *line, char *pos, char *label, char *fmt, va_list args) {
    fprintf(stderr, isatty(fileno(stderr)) ? "\e[1;31m[%s]\e[0m " : "[%s] ", label);
    fprintf(stderr, "%s: %s: ", line, pos);
    vfprintf(stderr, fmt, args);
    fprintf(stderr, "\n");
}
