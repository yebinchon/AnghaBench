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
struct TYPE_4__ {int e_o_s; } ;
typedef  TYPE_1__ ogg_stream_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

int FUNC1(ogg_stream_state *os){
  if(FUNC0(os)) return 1;
  return os->e_o_s;
}