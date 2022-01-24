#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_3__ {int /*<<< orphan*/  b_o_s; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_1__ ogg_packet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(ogg_packet *op){
  oggpack_buffer opb;
  char buffer[6];

  if(op){
    FUNC4(&opb,op->packet,op->bytes);

    if(!op->b_o_s)
      return(0); /* Not the initial packet */

    if(FUNC3(&opb,8) != 1)
      return 0; /* not an ID header */

    FUNC2(buffer,0,6);
    FUNC0(&opb,buffer,6);
    if(FUNC1(buffer,"vorbis",6))
      return 0; /* not vorbis */

    return 1;
  }

  return 0;
}