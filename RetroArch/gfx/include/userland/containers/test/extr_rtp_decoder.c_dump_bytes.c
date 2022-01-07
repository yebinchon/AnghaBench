
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BYTES_PER_ROW ;
 int LOG_INFO (int *,char*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static void dump_bytes(const uint8_t *buffer, size_t buffer_len)
{
   char dump_str[3 * BYTES_PER_ROW + 1];
   int in_row = 0;

   while (buffer_len--)
   {
      sprintf(dump_str + 3 * in_row, "%2.2X ", *buffer++);
      if (++in_row == BYTES_PER_ROW)
      {
         LOG_INFO(((void*)0), dump_str);
         in_row = 0;
      }
   }

   if (in_row)
   {
      LOG_INFO(((void*)0), dump_str);
   }
}
