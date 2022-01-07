
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEYBOARD ;
 int Milestone ;
 int PageNo ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int read (int ,char*,int) ;
 int stdout ;

Pause()
{

 char ch[8];

 printf("\nTo continue, press RETURN");
 fflush(stdout);
 read(KEYBOARD, ch, 8);

 printf("\nDiagnosis resumes after milestone Number %d", Milestone);
 printf("          Page: %d\n\n", PageNo);
 ++Milestone;
 ++PageNo;
 }
