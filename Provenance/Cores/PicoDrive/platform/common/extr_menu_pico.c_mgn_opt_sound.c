
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POPT_EN_STEREO ;
 int PicoOpt ;
 int PsndRate ;
 int sprintf (char const*,char*,int,char const*) ;
 char const* static_buff ;

__attribute__((used)) static const char *mgn_opt_sound(int id, int *offs)
{
 const char *str2;
 *offs = -8;
 str2 = (PicoOpt & POPT_EN_STEREO) ? "stereo" : "mono";
 sprintf(static_buff, "%5iHz %s", PsndRate, str2);
 return static_buff;
}
