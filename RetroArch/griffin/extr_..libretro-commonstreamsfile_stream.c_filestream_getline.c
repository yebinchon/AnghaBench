
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int EOF ;
 int filestream_getc (int *) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (char*,size_t) ;

char* filestream_getline(RFILE *stream)
{
   char *newline_tmp = ((void*)0);
   size_t cur_size = 8;
   size_t idx = 0;
   int in = 0;
   char *newline = (char*)malloc(9);

   if (!stream || !newline)
   {
      if (newline)
         free(newline);
      return ((void*)0);
   }

   in = filestream_getc(stream);

   while (in != EOF && in != '\n')
   {
      if (idx == cur_size)
      {
         cur_size *= 2;
         newline_tmp = (char*)realloc(newline, cur_size + 1);

         if (!newline_tmp)
         {
            free(newline);
            return ((void*)0);
         }

         newline = newline_tmp;
      }

      newline[idx++] = in;
      in = filestream_getc(stream);
   }

   newline[idx] = '\0';
   return newline;
}
