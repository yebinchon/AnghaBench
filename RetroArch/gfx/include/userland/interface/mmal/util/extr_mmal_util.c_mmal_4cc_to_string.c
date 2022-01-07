
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int memcpy (char*,char*,int) ;
 int snprintf (char*,size_t,char*) ;
 int vcos_assert (int) ;

char *mmal_4cc_to_string(char *buf, size_t len, uint32_t fourcc)
{
   char *src = (char*)&fourcc;
   vcos_assert(len >= 5);
   if (len < 5)
   {
      buf[0] = '\0';
   }
   else if (fourcc)
   {
      memcpy(buf, src, 4);
      buf[4] = '\0';
   }
   else
   {
      snprintf(buf, len, "<0>");
   }
   return buf;
}
