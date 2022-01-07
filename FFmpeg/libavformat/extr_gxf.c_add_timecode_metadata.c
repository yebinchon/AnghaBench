
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tmp ;
typedef int AVDictionary ;


 int av_dict_set (int **,char const*,char*,int ) ;
 int snprintf (char*,int,char*,int,int,int,char,int) ;

__attribute__((used)) static int add_timecode_metadata(AVDictionary **pm, const char *key, uint32_t timecode, int fields_per_frame)
{
   char tmp[128];
   int field = timecode & 0xff;
   int frame = fields_per_frame ? field / fields_per_frame : field;
   int second = (timecode >> 8) & 0xff;
   int minute = (timecode >> 16) & 0xff;
   int hour = (timecode >> 24) & 0x1f;
   int drop = (timecode >> 29) & 1;


   if (timecode >> 31)
       return 0;
   snprintf(tmp, sizeof(tmp), "%02d:%02d:%02d%c%02d",
       hour, minute, second, drop ? ';' : ':', frame);
   return av_dict_set(pm, key, tmp, 0);
}
