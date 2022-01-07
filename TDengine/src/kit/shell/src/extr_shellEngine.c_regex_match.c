
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;
typedef int msgbuf ;


 int REG_NOMATCH ;
 int exitShell () ;
 int fprintf (int ,char*,...) ;
 scalar_t__ regcomp (int *,char const*,int) ;
 int regerror (int,int *,char*,int) ;
 int regexec (int *,char const*,int ,int *,int ) ;
 int regfree (int *) ;
 int stderr ;

int regex_match(const char *s, const char *reg, int cflags) {
  regex_t regex;
  char msgbuf[100];


  if (regcomp(&regex, reg, cflags) != 0) {
    fprintf(stderr, "Fail to compile regex");
    exitShell();
  }


  int reti = regexec(&regex, s, 0, ((void*)0), 0);
  if (!reti) {
    regfree(&regex);
    return 1;
  } else if (reti == REG_NOMATCH) {
    regfree(&regex);
    return 0;
  } else {
    regerror(reti, &regex, msgbuf, sizeof(msgbuf));
    fprintf(stderr, "Regex match failed: %s\n", msgbuf);
    regfree(&regex);
    exitShell();
  }

  return 0;
}
