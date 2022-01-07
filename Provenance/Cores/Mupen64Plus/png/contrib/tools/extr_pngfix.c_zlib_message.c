
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* msg; } ;
struct zlib {int rc; TYPE_4__* chunk; TYPE_3__* file; TYPE_2__ z; TYPE_1__* global; } ;
struct TYPE_8__ {int chunk_type; } ;
struct TYPE_7__ {int file_name; } ;
struct TYPE_5__ {scalar_t__ errors; } ;


 int fprintf (int ,char*,char*,int,char*,char const*) ;
 int fputs (int ,int ) ;
 int stderr ;
 int type_name (int ,int ) ;
 int type_sep (int ) ;
 char* zlib_rc (struct zlib*) ;

__attribute__((used)) static void
zlib_message(struct zlib *zlib, int unexpected)

{
   if (zlib->global->errors)
   {
      const char *reason = zlib->z.msg;

      if (reason == ((void*)0))
         reason = "[no message]";

      fputs(zlib->file->file_name, stderr);
      type_sep(stderr);
      type_name(zlib->chunk->chunk_type, stderr);
      fprintf(stderr, ": %szlib error: %d (%s) (%s)\n",
         unexpected ? "unexpected " : "", zlib->rc, zlib_rc(zlib), reason);
   }
}
