
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int AddString (char*,char*,char const*) ;

__attribute__((used)) static char *
AddSoundLFO (char *outstring, const char *string, u16 level, u16 waveform)
{
  if (level > 0)
    {
      switch (waveform)
        {
        case 0:
          AddString(outstring, "%s Sawtooth\r\n", string);
          break;
        case 1:
          AddString(outstring, "%s Square\r\n", string);
          break;
        case 2:
          AddString(outstring, "%s Triangle\r\n", string);
          break;
        case 3:
          AddString(outstring, "%s Noise\r\n", string);
          break;
        }
    }

  return outstring;
}
