
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int STDIN_FILENO ;
 scalar_t__ read (int ,char*,size_t) ;

size_t read_stdin(char *buf, size_t size)
{
   size_t has_read = 0;

   while (size)
   {
      ssize_t ret = read(STDIN_FILENO, buf, size);

      if (ret <= 0)
         break;

      buf += ret;
      has_read += ret;
      size -= ret;
   }

   return has_read;
}
