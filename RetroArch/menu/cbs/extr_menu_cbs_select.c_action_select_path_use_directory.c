
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int action_ok_path_use_directory (char const*,char const*,unsigned int,size_t,int ) ;

__attribute__((used)) static int action_select_path_use_directory(const char *path,
      const char *label, unsigned type, size_t idx)
{
   return action_ok_path_use_directory(path, label, type, idx, 0 );
}
