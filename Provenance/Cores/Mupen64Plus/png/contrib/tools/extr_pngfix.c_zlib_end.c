
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {char* msg; } ;
struct zlib {int ok_bits; int file_bits; scalar_t__ state; scalar_t__ rc; TYPE_4__ z; TYPE_3__* file; int compressed_digits; int compressed_bytes; TYPE_2__* chunk; int uncompressed_digits; int uncompressed_bytes; scalar_t__ cksum; TYPE_1__* global; } ;
struct TYPE_7__ {int file_name; } ;
struct TYPE_6__ {int chunk_type; } ;
struct TYPE_5__ {int quiet; } ;


 int CLEAR (struct zlib) ;
 scalar_t__ Z_OK ;
 int emit_string (char*,int ) ;
 int fputs (int ,int ) ;
 scalar_t__ inflateEnd (TYPE_4__*) ;
 int printf (char*,char const*,...) ;
 int putc (char,int ) ;
 int stdout ;
 int type_name (int ,int ) ;
 int uarb_print (int ,int ,int ) ;
 char* zlib_flevel (struct zlib*) ;
 int zlib_message (struct zlib*,int) ;
 char* zlib_rc (struct zlib*) ;

__attribute__((used)) static void
zlib_end(struct zlib *zlib)
{



   if (!zlib->global->quiet)
   {
      if (zlib->ok_bits < 16)
      {
         const char *reason;

         if (zlib->cksum)
            reason = "CHK";

         else if (zlib->ok_bits > zlib->file_bits)
            reason = "TFB";

         else if (zlib->ok_bits == zlib->file_bits)
            reason = "OK ";

         else
            reason = "OPT";





         type_name(zlib->chunk->chunk_type, stdout);
         printf(" %s %s %d %d ", reason, zlib_flevel(zlib), zlib->file_bits,
            zlib->ok_bits);
         uarb_print(zlib->compressed_bytes, zlib->compressed_digits, stdout);
         putc(' ', stdout);
         uarb_print(zlib->uncompressed_bytes, zlib->uncompressed_digits,
            stdout);
         putc(' ', stdout);
         fputs(zlib->file->file_name, stdout);
         putc('\n', stdout);
      }

      else
      {
         type_name(zlib->chunk->chunk_type, stdout);
         printf(" SKP %s %d %s ", zlib_flevel(zlib), zlib->file_bits,
            zlib_rc(zlib));
         uarb_print(zlib->compressed_bytes, zlib->compressed_digits, stdout);
         putc(' ', stdout);
         emit_string(zlib->z.msg ? zlib->z.msg : "[no_message]", stdout);
         putc(' ', stdout);
         fputs(zlib->file->file_name, stdout);
         putc('\n', stdout);
      }
   }

   if (zlib->state >= 0)
   {
      zlib->rc = inflateEnd(&zlib->z);

      if (zlib->rc != Z_OK)
         zlib_message(zlib, 1 );
   }

   CLEAR(*zlib);
}
