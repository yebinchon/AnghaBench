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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

s32 FUNC8(FILE *bin_file, char *output_dir, char *iso_file_name,
 u32 sector_count)
{
  FILE *iso_file;
  u8 sector_buffer[2352];
  u32 i;

  FUNC0(output_dir);
  iso_file = FUNC3(iso_file_name, "wb");
  if (iso_file == NULL)
  {
    FUNC7("failed to open: %s\n", iso_file_name);
    FUNC6(1);
  }
  FUNC7("writing iso %s, %x sectors\n", iso_file_name, sector_count);

  for(i = 0; i < sector_count; i++)
  {
    FUNC7("\b\b\b%3i", i*100 / sector_count);
    FUNC2(stdout);
    FUNC4(sector_buffer, 2352, 1, bin_file);
    FUNC5(sector_buffer + 16, 2048, 1, iso_file);
  }
  FUNC7("\b\b\b100\n");

  FUNC1(iso_file);
  FUNC0("..");
  return 0;
}