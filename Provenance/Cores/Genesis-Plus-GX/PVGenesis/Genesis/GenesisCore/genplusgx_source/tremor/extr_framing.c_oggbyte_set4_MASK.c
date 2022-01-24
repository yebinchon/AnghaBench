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
struct TYPE_5__ {int* ptr; int pos; } ;
typedef  TYPE_1__ oggbyte_buffer ;
typedef  int ogg_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC2(oggbyte_buffer *b,ogg_uint32_t val,int pos){
  int i;
  FUNC0(b,pos);
  for(i=0;i<4;i++){
    FUNC1(b,pos);
    b->ptr[pos-b->pos]=val;
    val>>=8;
    ++pos;
  }
}