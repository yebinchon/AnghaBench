
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ fattributes_t ;


 int VC_FILESYS_SET_ATTR ;
 int vc_filesys_single_string (int ,char const*,int ,int ) ;

int vc_filesys_set_attr(const char *path, fattributes_t attr)
{
   return vc_filesys_single_string((uint32_t) attr, path, VC_FILESYS_SET_ATTR, 0);
}
