
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;


 scalar_t__ Devices_GetAtariPath (size_t,int ) ;
 size_t Devices_GetNumber (int) ;
 int * Devices_atari_h_dir ;
 int Util_catpath (int ,int ,int ) ;
 int atari_filename ;
 int atari_path ;
 size_t h_devnum ;
 int host_path ;

__attribute__((used)) static UWORD Devices_GetHostPath(int set_textmode)
{
 UWORD bufadr;
 h_devnum = Devices_GetNumber(set_textmode);
 if (h_devnum < 0)
  return 0;
 bufadr = Devices_GetAtariPath(h_devnum, atari_filename);
 if (bufadr == 0)
  return 0;
 Util_catpath(host_path, Devices_atari_h_dir[h_devnum], atari_path);
 return bufadr;
}
