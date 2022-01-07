
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sndrate_prevnext(int rate, int dir)
{
 int i, rates[] = { 11025, 22050, 44100 };

 for (i = 0; i < 5; i++)
  if (rates[i] == rate) break;

 i += dir ? 1 : -1;
 if (i > 2) return dir ? 44100 : 22050;
 if (i < 0) return dir ? 22050 : 11025;
 return rates[i];
}
