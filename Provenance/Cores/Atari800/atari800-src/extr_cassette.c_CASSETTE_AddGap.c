
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cassette_gapdelay ;

int CASSETTE_AddGap(int gaptime)
{
 cassette_gapdelay += gaptime;
 if (cassette_gapdelay < 0)
  cassette_gapdelay = 0;
 return cassette_gapdelay;
}
