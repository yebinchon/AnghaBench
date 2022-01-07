
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int RLIMIT_CORE ;
 int UnixSetResourceLimit (int ,int ) ;
 int _exit (int) ;
 int abort () ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fputs (char*,int ) ;
 int fwrite (char*,int,int ,int *) ;
 int stdout ;
 int strlen (char*) ;

void AbortExitEx(char *msg)
{
 FILE *f;

 if (msg == ((void*)0))
 {
  msg = "Unknown Error";
 }

 f = fopen("abort_error_log.txt", "w");
 if (f != ((void*)0))
 {
  fwrite(msg, 1, strlen(msg), f);
  fclose(f);
 }

 fputs("Fatal Error: ", stdout);
 fputs(msg, stdout);
 fputs("\r\n", stdout);
 abort();

}
