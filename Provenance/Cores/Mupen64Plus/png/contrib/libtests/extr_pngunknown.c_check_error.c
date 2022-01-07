
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int png_int_32 ;
struct TYPE_4__ {char* file; char* test; int error_count; } ;
typedef TYPE_1__ display ;
struct TYPE_5__ {char* name; } ;


 TYPE_2__* chunk_info ;
 int find_by_flag (int) ;
 int fprintf (int ,char*,char*,char*,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
check_error(display *d, png_uint_32 flags, const char *message)
{
   while (flags)
   {
      png_uint_32 flag = flags & -(png_int_32)flags;
      int i = find_by_flag(flag);

      fprintf(stderr, "%s(%s): chunk %s: %s\n", d->file, d->test,
         chunk_info[i].name, message);
      ++(d->error_count);

      flags &= ~flag;
   }
}
