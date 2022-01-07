
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Print (char*) ;
 int RestoreConsole (void*) ;
 void* SetConsoleRaw () ;
 int Zero (char*,int) ;
 int exit (int ) ;
 int getc (int ) ;
 int getch () ;
 int putc (int,int ) ;
 int stdin ;
 int stdout ;

bool PasswordPrompt(char *password, UINT size)
{
 UINT wp;
 bool escape = 0;
 void *console;

 if (password == ((void*)0) || size <= 1)
 {
  if (size >= 1)
  {
   password[0] = 0;
  }
  return 0;
 }

 wp = 0;

 Zero(password, size);

 console = SetConsoleRaw();

 while (1)
 {
  int c;




  c = getc(stdin);


  if (c >= 0x20 && c <= 0x7E)
  {

   if ((wp + 1) < size)
   {
    password[wp++] = (char)c;
    putc('*', stdout);
   }
  }
  else if (c == 0x03)
  {

   exit(0);
  }
  else if (c == 0x04 || c == 0x1a || c == 0x0D || c==0x0A)
  {

   if (c == 0x04 || c == 0x1a)
   {
    escape = 1;
   }
   break;
  }
  else if (c == 0xE0)
  {




   c = getc(stdin);

   if (c == 0x4B || c == 0x53)
   {

    goto BACKSPACE;
   }
  }
  else if (c == 0x08)
  {
BACKSPACE:

   if (wp >= 1)
   {
    password[--wp] = 0;
    putc(0x08, stdout);
    putc(' ', stdout);
    putc(0x08, stdout);
   }
  }
 }
 Print("\n");

 RestoreConsole(console);

 return (escape ? 0 : 1);
}
