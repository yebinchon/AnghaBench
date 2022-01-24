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
typedef  enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;

/* Variables and functions */
 int FILE_TYPE_CHD ; 
 int FILE_TYPE_COMPRESSED ; 
 int FILE_TYPE_CUE ; 
 int FILE_TYPE_GDI ; 
 int FILE_TYPE_ISO ; 
 int FILE_TYPE_LUTRO ; 
 int FILE_TYPE_NONE ; 
 int FILE_TYPE_WBFS ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static enum msg_file_type FUNC1(const char *ext)
{
   if (
         FUNC0(ext, "7z")  ||
         FUNC0(ext, "7Z")  ||
         FUNC0(ext, "zip") ||
         FUNC0(ext, "ZIP") ||
         FUNC0(ext, "apk") ||
         FUNC0(ext, "APK")
      )
      return FILE_TYPE_COMPRESSED;
   if (
         FUNC0(ext, "cue")  ||
         FUNC0(ext, "CUE")
      )
      return FILE_TYPE_CUE;
   if (
         FUNC0(ext, "gdi")  ||
         FUNC0(ext, "GDI")
      )
      return FILE_TYPE_GDI;
   if (
         FUNC0(ext, "iso")  ||
         FUNC0(ext, "ISO")
      )
      return FILE_TYPE_ISO;
   if (
         FUNC0(ext, "chd")  ||
         FUNC0(ext, "CHD")
      )
      return FILE_TYPE_CHD;
   if (
         FUNC0(ext, "wbfs")  ||
         FUNC0(ext, "WBFS")
      )
      return FILE_TYPE_WBFS;
   if (
         FUNC0(ext, "lutro")  ||
         FUNC0(ext, "LUTRO")
      )
      return FILE_TYPE_LUTRO;
   return FILE_TYPE_NONE;
}