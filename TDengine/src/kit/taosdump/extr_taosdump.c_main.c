
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arguments {char* member_1; char* member_2; int member_7; int member_8; int member_9; int member_10; int member_13; int member_14; int member_18; scalar_t__ isDumpIn; scalar_t__ abort; int member_17; int * member_16; int member_15; int member_12; int member_11; int * member_6; int member_5; int member_4; int member_3; int * member_0; } ;


 int DEFAULT_DUMP_FILE ;
 int EXIT_FAILURE ;
 int INT64_MAX ;
 int argp ;
 int argp_parse (int *,int,char**,int ,int ,struct arguments*) ;
 int error (int,int ,char*) ;
 int exit (int ) ;
 scalar_t__ taosCheckParam (struct arguments*) ;
 scalar_t__ taosDumpIn (struct arguments*) ;
 scalar_t__ taosDumpOut (struct arguments*) ;

int main(int argc, char *argv[]) {
  struct arguments arguments = {

    ((void*)0), "root", "taosdata", 0,

    DEFAULT_DUMP_FILE, DEFAULT_DUMP_FILE, ((void*)0),

    0, 0,

    0, 0, 0, INT64_MAX, 1, 0,

    0, ((void*)0), 0, 0};



  argp_parse(&argp, argc, argv, 0, 0, &arguments);

  if (arguments.abort) error(10, 0, "ABORTED");

  if (taosCheckParam(&arguments) < 0) {
    exit(EXIT_FAILURE);
  }

  if (arguments.isDumpIn) {
    if (taosDumpIn(&arguments) < 0) return -1;
  } else {
    if (taosDumpOut(&arguments) < 0) return -1;
  }

  return 0;
}
