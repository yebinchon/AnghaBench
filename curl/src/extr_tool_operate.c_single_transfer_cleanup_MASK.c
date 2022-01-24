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
struct State {int /*<<< orphan*/ * inglob; int /*<<< orphan*/  uploadfile; int /*<<< orphan*/  httpgetfields; int /*<<< orphan*/  outfiles; int /*<<< orphan*/ * urls; } ;
struct OperationConfig {struct State state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct OperationConfig *config)
{
  if(config) {
    struct State *state = &config->state;
    if(state->urls) {
      /* Free list of remaining URLs */
      FUNC1(state->urls);
      state->urls = NULL;
    }
    FUNC0(state->outfiles);
    FUNC0(state->httpgetfields);
    FUNC0(state->uploadfile);
    if(state->inglob) {
      /* Free list of globbed upload files */
      FUNC1(state->inglob);
      state->inglob = NULL;
    }
  }
}