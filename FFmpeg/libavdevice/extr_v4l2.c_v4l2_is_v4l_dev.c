
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int v4l2_is_v4l_dev(const char *name)
{
    return !strncmp(name, "video", 5) ||
           !strncmp(name, "radio", 5) ||
           !strncmp(name, "vbi", 3) ||
           !strncmp(name, "v4l-subdev", 10);
}
