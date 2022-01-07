
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fgets (char*,int,int *) ;
 int g_line_number ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;

int fgetline(char* buff, int nchars, FILE* file)
{
 int length;

 if(fgets(buff, nchars, file) == ((void*)0))
  return -1;
 if(buff[0] == '\r')
  memcpy(buff, buff + 1, nchars - 1);

 length = strlen(buff);
 while(length && (buff[length-1] == '\r' || buff[length-1] == '\n'))
  length--;
 buff[length] = 0;
 g_line_number++;

 return length;
}
