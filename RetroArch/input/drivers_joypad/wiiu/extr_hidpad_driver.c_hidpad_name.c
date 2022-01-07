
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* HID_PAD_NAME (unsigned int) ;
 int hidpad_query_pad (unsigned int) ;

__attribute__((used)) static const char *hidpad_name(unsigned pad)
{
   if (!hidpad_query_pad(pad))
      return "N/A";

   return HID_PAD_NAME(pad);
}
