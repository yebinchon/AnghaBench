#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* buffer; } ;
typedef  TYPE_1__ Curl_send_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(Curl_send_buffer **inp)
{
  Curl_send_buffer *in;
  if(!inp)
    return;
  in = *inp;
  if(in) { /* deal with NULL input */
    FUNC0(in->buffer);
    FUNC0(in);
  }
  *inp = NULL;
}