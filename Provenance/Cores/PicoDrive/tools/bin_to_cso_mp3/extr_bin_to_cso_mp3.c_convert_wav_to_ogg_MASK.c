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
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(char *wav_file_name, char *output_dir,
 char *ogg_file_name)
{
  char cmd_string[(MAX_PATH * 2) + 16];

  FUNC0(output_dir);
  FUNC1(cmd_string, "oggenc %s", wav_file_name);
  FUNC2(cmd_string);

  FUNC3(wav_file_name);
  FUNC0("..");
}