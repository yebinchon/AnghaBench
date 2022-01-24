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
struct TYPE_6__ {char* msg; } ;
struct zlib {int rc; TYPE_4__* chunk; TYPE_3__* file; TYPE_2__ z; TYPE_1__* global; } ;
struct TYPE_8__ {int /*<<< orphan*/  chunk_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  file_name; } ;
struct TYPE_5__ {scalar_t__ errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct zlib*) ; 

__attribute__((used)) static void
FUNC5(struct zlib *zlib, int unexpected)
   /* Output a message given a zlib rc */
{
   if (zlib->global->errors)
   {
      const char *reason = zlib->z.msg;

      if (reason == NULL)
         reason = "[no message]";

      FUNC1(zlib->file->file_name, stderr);
      FUNC3(stderr);
      FUNC2(zlib->chunk->chunk_type, stderr);
      FUNC0(stderr, ": %szlib error: %d (%s) (%s)\n",
         unexpected ? "unexpected " : "", zlib->rc, FUNC4(zlib), reason);
   }
}