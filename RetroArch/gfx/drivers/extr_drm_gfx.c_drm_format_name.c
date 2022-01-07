
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int format_str ;
struct TYPE_3__ {unsigned int const format; int name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* format_info ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static void drm_format_name(const unsigned int fourcc, char *format_str)
{
 unsigned int i;
 for (i = 0; i < ARRAY_SIZE(format_info); i++)
   {
  if (format_info[i].format == fourcc)
   strlcpy(format_str, format_info[i].name, sizeof(format_str));
 }
}
