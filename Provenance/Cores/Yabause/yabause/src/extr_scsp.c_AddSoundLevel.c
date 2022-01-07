
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int AddString (char*,char*,...) ;

__attribute__((used)) static char *
AddSoundLevel (char *outstring, u16 level)
{
  if (level == 0)
    {
      AddString(outstring, "-MAX dB\r\n");
    }
  else
    {
      AddString(outstring, "-%d dB\r\n", (7-level) * 6);
    }

  return outstring;
}
