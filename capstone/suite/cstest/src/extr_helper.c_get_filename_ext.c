
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

const char *get_filename_ext(const char *filename)
{
 const char *dot;

 dot = strrchr(filename, '.');
 if (!dot || dot == filename)
  return "";

 return dot + 1;
}
