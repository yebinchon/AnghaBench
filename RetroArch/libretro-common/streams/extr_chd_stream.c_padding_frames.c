
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TRACK_PAD ;

__attribute__((used)) static uint32_t padding_frames(uint32_t frames)
{
   return ((frames + TRACK_PAD - 1) & ~(TRACK_PAD - 1)) - frames;
}
