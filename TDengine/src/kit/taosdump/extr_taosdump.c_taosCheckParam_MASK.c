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
struct arguments {scalar_t__ start_time; scalar_t__ end_time; scalar_t__ arg_list_len; int /*<<< orphan*/ * encode; scalar_t__ isDumpIn; int /*<<< orphan*/  output; scalar_t__ all_databases; scalar_t__ databases; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_DUMP_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct arguments *arguments) {
  if (arguments->all_databases && arguments->databases) {
    FUNC0(stderr, "conflict option --all-databases and --databases\n");
    return -1;
  }

  if (arguments->start_time > arguments->end_time) {
    FUNC0(stderr, "start time is larger than end time\n");
    return -1;
  }
  if (arguments->arg_list_len == 0) {
    if ((!arguments->all_databases) && (!arguments->isDumpIn)) {
      FUNC0(stderr, "taosdump requires parameters\n");
      return -1;
    }
  }

  if (arguments->isDumpIn && (FUNC1(arguments->output, DEFAULT_DUMP_FILE) != 0)) {
    FUNC0(stderr, "duplicate parameter input and output file\n");
    return -1;
  }

  if (!arguments->isDumpIn && arguments->encode != NULL) {
    FUNC0(stderr, "invalid option in dump out\n");
    return -1;
  }

  return 0;
}