#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  state; TYPE_1__* conn; } ;
typedef  TYPE_2__ tftp_state_data_t ;
typedef  int /*<<< orphan*/  tftp_event_t ;
struct Curl_easy {int dummy; } ;
struct TYPE_6__ {struct Curl_easy* data; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  TFTP_STATE_TX ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*,char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC3(tftp_state_data_t *state,
                                    tftp_event_t event)
{
  CURLcode result;
#ifndef CURL_DISABLE_VERBOSE_STRINGS
  struct Curl_easy *data = state->conn->data;

  FUNC0(data, "%s\n", "Connected for transmit");
#endif
  state->state = TFTP_STATE_TX;
  result = FUNC1(state);
  if(result)
    return result;
  return FUNC2(state, event);
}