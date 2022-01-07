
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arguments {scalar_t__ abort; } ;


 int argp ;
 int argp_parse (int *,int,char**,int ,int ,struct arguments*) ;
 int error (int,int ,char*) ;

void shellParseArgument(int argc, char *argv[], struct arguments *arguments) {
  argp_parse(&argp, argc, argv, 0, 0, arguments);
  if (arguments->abort) {
    error(10, 0, "ABORTED");
  }
}
