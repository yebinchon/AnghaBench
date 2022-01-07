
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID_INPUT_SEPARATOR ;
 int MAX_INSERT_LENGTH ;
 char* MAX_LINE_LENGTH ;
 int error_exit (char*) ;
 int fgetline (char*,char*,int ) ;
 int g_input_file ;
 scalar_t__ strcmp (char*,int ) ;
 int strcpy (int ,char*) ;

void read_insert(char* insert)
{
 char* ptr = insert;
 char* overflow = insert + MAX_INSERT_LENGTH - MAX_LINE_LENGTH;
 int length;
 char* first_blank = ((void*)0);

 first_blank = ((void*)0);


 for(length = 0;length == 0;length = fgetline(ptr, MAX_LINE_LENGTH, g_input_file))
  if(ptr >= overflow)
   error_exit("Buffer overflow reading inserts");
 if(length < 0)
  error_exit("Premature EOF while reading inserts");


 ptr += length;
 strcpy(ptr++, "\n");


 for(;;)
 {

  if(ptr >= overflow)
   error_exit("Buffer overflow reading inserts");
  if((length = fgetline(ptr, MAX_LINE_LENGTH, g_input_file)) < 0)
   error_exit("Premature EOF while reading inserts");


  if(strcmp(ptr, ID_INPUT_SEPARATOR) == 0)
   break;


  if(length == 0)
  {
   if(first_blank == ((void*)0))
    first_blank = ptr;
  }
  else
   first_blank = ((void*)0);


  ptr += length;
  strcpy(ptr++, "\n");
 }


 if(first_blank)
  ptr = first_blank;
 *ptr++ = 0;
}
