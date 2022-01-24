#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* PNG_LIBPNG_VER_STRING ; 
 char* ZLIB_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* png_libpng_ver ; 
 int /*<<< orphan*/  stderr ; 
 char* zlib_version ; 

void FUNC1(void)
{
    FUNC0(stderr, "   Compiled with libpng %s; using libpng %s\n",
      PNG_LIBPNG_VER_STRING, png_libpng_ver);

    FUNC0(stderr, "   and with zlib %s; using zlib %s.\n",
      ZLIB_VERSION, zlib_version);
}