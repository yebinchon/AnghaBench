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
struct GlobalConfig {int /*<<< orphan*/  libcurl; int /*<<< orphan*/ * trace_stream; scalar_t__ trace_fopened; int /*<<< orphan*/ * errors; scalar_t__ errors_fopened; int /*<<< orphan*/  trace_dump; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct GlobalConfig *config)
{
  FUNC0(config->trace_dump);

  if(config->errors_fopened && config->errors)
    FUNC1(config->errors);
  config->errors = NULL;

  if(config->trace_fopened && config->trace_stream)
    FUNC1(config->trace_stream);
  config->trace_stream = NULL;

  FUNC0(config->libcurl);
}