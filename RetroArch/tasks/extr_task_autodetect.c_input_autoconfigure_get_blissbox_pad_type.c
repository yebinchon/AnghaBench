
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blissbox_pad_type_t ;


 int const* input_autoconfigure_get_blissbox_pad_type_libusb (int,int) ;
 int const* input_autoconfigure_get_blissbox_pad_type_win32 (int,int) ;

__attribute__((used)) static const blissbox_pad_type_t* input_autoconfigure_get_blissbox_pad_type(int vid, int pid)
{
   return input_autoconfigure_get_blissbox_pad_type_libusb(vid, pid);

}
