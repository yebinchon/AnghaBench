
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int AddString (char*,char*,...) ;

__attribute__((used)) static char *AddSoundPan(char *outstring, u16 pan)
{
   if (pan == 0x0F)
   {
      AddString(outstring, "Left = -MAX dB, Right = -0 dB\r\n");
   }
   else if (pan == 0x1F)
   {
      AddString(outstring, "Left = -0 dB, Right = -MAX dB\r\n");
   }
   else
   {
      AddString(outstring, "Left = -%d dB, Right = -%d dB\r\n", (pan & 0xF) * 3, (pan >> 4) * 3);
   }

   return outstring;
}
