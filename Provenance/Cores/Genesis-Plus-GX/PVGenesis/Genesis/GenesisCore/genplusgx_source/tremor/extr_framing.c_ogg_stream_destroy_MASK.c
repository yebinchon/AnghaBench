#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  body_tail; int /*<<< orphan*/  header_tail; } ;
typedef  TYPE_1__ ogg_stream_state ;

/* Variables and functions */
 int OGG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(ogg_stream_state *os){
  if(os){
    FUNC2(os->header_tail);
    FUNC2(os->body_tail);
    FUNC1(os,0,sizeof(*os));    
    FUNC0(os);
  }
  return OGG_SUCCESS;
}