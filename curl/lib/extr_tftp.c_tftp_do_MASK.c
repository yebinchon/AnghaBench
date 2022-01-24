#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error; } ;
typedef  TYPE_2__ tftp_state_data_t ;
struct TYPE_3__ {scalar_t__ tftpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_TFTP_ILLEGAL ; 
 int FALSE ; 
 scalar_t__ FUNC0 (struct connectdata*,int*) ; 
 scalar_t__ FUNC1 (struct connectdata*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC3(struct connectdata *conn, bool *done)
{
  tftp_state_data_t *state;
  CURLcode result;

  *done = FALSE;

  if(!conn->proto.tftpc) {
    result = FUNC0(conn, done);
    if(result)
      return result;
  }

  state = (tftp_state_data_t *)conn->proto.tftpc;
  if(!state)
    return CURLE_TFTP_ILLEGAL;

  result = FUNC1(conn, done);

  /* If tftp_perform() returned an error, use that for return code. If it
     was OK, see if tftp_translate_code() has an error. */
  if(!result)
    /* If we have encountered an internal tftp error, translate it. */
    result = FUNC2(state->error);

  return result;
}