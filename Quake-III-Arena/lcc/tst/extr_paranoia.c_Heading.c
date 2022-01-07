
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msglist (char**) ;

Heading()
{
  static char *head[] = {
 "Users are invited to help debug and augment this program so it will",
 "cope with unanticipated and newly uncovered arithmetic pathologies.\n",
 "Please send suggestions and interesting results to",
 "\tRichard Karpinski",
 "\tComputer Center U-76",
 "\tUniversity of California",
 "\tSan Francisco, CA 94143-0704, USA\n",
 "In doing so, please include the following information:",



 "\tPrecision:\tdouble;",

 "\tVersion:\t10 February 1989;",
 "\tComputer:\n",
 "\tCompiler:\n",
 "\tOptimization level:\n",
 "\tOther relevant compiler options:",
 0};

 msglist(head);
 }
