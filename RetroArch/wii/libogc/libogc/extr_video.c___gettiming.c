
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _timing {int dummy; } ;
 struct _timing const* video_timing ;

__attribute__((used)) static const struct _timing* __gettiming(u32 vimode)
{
 switch(vimode) {
  case 132:
   return &video_timing[0];
   break;
  case 133:
   return &video_timing[1];
   break;
  case 129:
   return &video_timing[2];
   break;
  case 130:
   return &video_timing[3];
   break;
  case 138:
   return &video_timing[0];
   break;
  case 139:
   return &video_timing[1];
   break;
  case 135:
   return &video_timing[4];
   break;
  case 136:
   return &video_timing[5];
   break;
  case 131:
   return &video_timing[6];
   break;
  case 128:
   return &video_timing[7];
   break;
  case 137:
   return &video_timing[6];
   break;
  case 134:
   return &video_timing[6];
   break;
  default:
   return ((void*)0);
 }
}
