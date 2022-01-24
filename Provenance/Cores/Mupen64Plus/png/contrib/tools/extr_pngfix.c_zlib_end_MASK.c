#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* msg; } ;
struct zlib {int ok_bits; int file_bits; scalar_t__ state; scalar_t__ rc; TYPE_4__ z; TYPE_3__* file; int /*<<< orphan*/  compressed_digits; int /*<<< orphan*/  compressed_bytes; TYPE_2__* chunk; int /*<<< orphan*/  uncompressed_digits; int /*<<< orphan*/  uncompressed_bytes; scalar_t__ cksum; TYPE_1__* global; } ;
struct TYPE_7__ {int /*<<< orphan*/  file_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  chunk_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  quiet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zlib) ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct zlib*) ; 
 int /*<<< orphan*/  FUNC9 (struct zlib*,int) ; 
 char* FUNC10 (struct zlib*) ; 

__attribute__((used)) static void
FUNC11(struct zlib *zlib)
{
   /* Output the summary line now; this ensures a summary line always gets
    * output regardless of the manner of exit.
    */
   if (!zlib->global->quiet)
   {
      if (zlib->ok_bits < 16) /* stream was read ok */
      {
         const char *reason;

         if (zlib->cksum)
            reason = "CHK"; /* checksum error */

         else if (zlib->ok_bits > zlib->file_bits)
            reason = "TFB"; /* fixing a too-far-back error */

         else if (zlib->ok_bits == zlib->file_bits)
            reason = "OK ";

         else
            reason = "OPT"; /* optimizing window bits */

         /* SUMMARY FORMAT (for a successful zlib inflate):
          *
          * IDAT reason flevel file-bits ok-bits compressed uncompressed file
          */
         FUNC6(zlib->chunk->chunk_type, stdout);
         FUNC4(" %s %s %d %d ", reason, FUNC8(zlib), zlib->file_bits,
            zlib->ok_bits);
         FUNC7(zlib->compressed_bytes, zlib->compressed_digits, stdout);
         FUNC5(' ', stdout);
         FUNC7(zlib->uncompressed_bytes, zlib->uncompressed_digits,
            stdout);
         FUNC5(' ', stdout);
         FUNC2(zlib->file->file_name, stdout);
         FUNC5('\n', stdout);
      }

      else
      {
         /* This is a zlib read error; the chunk will be skipped.  For an IDAT
          * stream this will also cause a fatal read error (via stop()).
          *
          * SUMMARY FORMAT:
          *
          * IDAT SKP flevel file-bits z-rc compressed message file
          *
          * z-rc is the zlib failure code; message is the error message with
          * spaces replaced by '-'.  The compressed byte count indicates where
          * in the zlib stream the error occurred.
          */
         FUNC6(zlib->chunk->chunk_type, stdout);
         FUNC4(" SKP %s %d %s ", FUNC8(zlib), zlib->file_bits,
            FUNC10(zlib));
         FUNC7(zlib->compressed_bytes, zlib->compressed_digits, stdout);
         FUNC5(' ', stdout);
         FUNC1(zlib->z.msg ? zlib->z.msg : "[no_message]", stdout);
         FUNC5(' ', stdout);
         FUNC2(zlib->file->file_name, stdout);
         FUNC5('\n', stdout);
      }
   }

   if (zlib->state >= 0)
   {
      zlib->rc = FUNC3(&zlib->z);

      if (zlib->rc != Z_OK)
         FUNC9(zlib, 1/*unexpected*/);
   }

   FUNC0(*zlib);
}