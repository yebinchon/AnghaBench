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
struct cdfs_track_t {int dummy; } ;
typedef  int /*<<< orphan*/  intfstream_t ;

/* Variables and functions */
 struct cdfs_track_t* FUNC0 (char const*,unsigned int) ; 
 struct cdfs_track_t* FUNC1 (char const*,unsigned int) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

struct cdfs_track_t* FUNC4(const char* path, unsigned int track_index)
{
   intfstream_t* stream = NULL;
   const char* ext = FUNC2(path);

   if (FUNC3(ext, "cue"))
      return FUNC1(path, track_index);

#ifdef HAVE_CHD
   if (string_is_equal_noncase(ext, "chd"))
      return cdfs_open_chd_track(path, track_index);
#endif

   /* unsupported file type */
   return NULL;
}