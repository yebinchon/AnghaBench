
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
struct TYPE_5__ {int keep; char* name; scalar_t__ unknown; } ;






 int ancillary (char*) ;
 TYPE_2__* chunk_info ;
 int find_by_flag (int) ;
 int fprintf (int ,char*,char*,char*,char*,char const*,char*,char const*,char const*) ;
 int stderr ;

__attribute__((used)) static void
check_handling(display *d, int def, png_uint_32 chunks, png_uint_32 known,
   png_uint_32 unknown, const char *position, int set_callback)
{
   while (chunks)
   {
      png_uint_32 flag = chunks & -(png_int_32)chunks;
      int i = find_by_flag(flag);
      int keep = chunk_info[i].keep;
      const char *type;
      const char *errorx = ((void*)0);

      if (chunk_info[i].unknown)
      {
         if (keep == 130)
         {
            type = "UNKNOWN (default)";
            keep = def;
         }

         else
            type = "UNKNOWN (specified)";

         if (flag & known)
            errorx = "chunk processed";

         else switch (keep)
         {
            case 130:
               if (flag & unknown)
                  errorx = "DEFAULT: unknown chunk saved";
               break;

            case 128:
               if (flag & unknown)
                  errorx = "DISCARD: unknown chunk saved";
               break;

            case 129:
               if (ancillary(chunk_info[i].name))
               {
                  if (!(flag & unknown))
                     errorx = "IF-SAFE: unknown ancillary chunk lost";
               }

               else if (flag & unknown)
                  errorx = "IF-SAFE: unknown critical chunk saved";
               break;

            case 131:
               if (!(flag & unknown))
                  errorx = "SAVE: unknown chunk lost";
               break;

            default:
               errorx = "internal error: bad keep";
               break;
         }
      }

      else
      {
         type = "KNOWN";

         if (flag & known)
         {



            if (keep != 130)
               errorx = "!DEFAULT: known chunk processed";
         }

         else switch (keep)
         {
            case 130:
               errorx = "DEFAULT: known chunk not processed";
               break;

            case 128:
               if (flag & unknown)
                  errorx = "DISCARD: known chunk saved";
               break;

            case 129:
               if (ancillary(chunk_info[i].name))
               {
                  if (!(flag & unknown))
                     errorx = "IF-SAFE: known ancillary chunk lost";
               }

               else if (flag & unknown)
                  errorx = "IF-SAFE: known critical chunk saved";
               break;

            case 131:
               if (!(flag & unknown))
                  errorx = "SAVE: known chunk lost";
               break;

            default:
               errorx = "internal error: bad keep (2)";
               break;
         }
      }

      if (errorx != ((void*)0))
      {
         ++(d->error_count);
         fprintf(stderr, "%s(%s%s): %s %s %s: %s\n", d->file, d->test,
            set_callback ? ",callback" : "",
            type, chunk_info[i].name, position, errorx);
      }

      chunks &= ~flag;
   }
}
