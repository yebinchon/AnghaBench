
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Util_chomp (char*) ;
 int add_history (char*) ;
 int fflush (int ) ;
 int fgets (char*,size_t,int ) ;
 int fputs (char const*,int ) ;
 int free (char*) ;
 char* readline (char const*) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static void safe_gets(char *buffer, size_t size, char const *prompt)
{
 fputs(prompt, stdout);
 fgets(buffer, size, stdin);

 Util_chomp(buffer);
}
