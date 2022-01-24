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

/* Variables and functions */
 int FUNC0 (unsigned char const*) ; 
 scalar_t__ FUNC1 (unsigned char*,size_t) ; 

unsigned FUNC2(unsigned char** out, size_t* outlength, const unsigned char* chunk)
{
  unsigned i;
  unsigned total_chunk_length = FUNC0(chunk) + 12;
  unsigned char *chunk_start, *new_buffer;
  size_t new_length = (*outlength) + total_chunk_length;
  if(new_length < total_chunk_length || new_length < (*outlength)) return 77; /*integer overflow happened*/

  new_buffer = (unsigned char*)FUNC1(*out, new_length);
  if(!new_buffer) return 83; /*alloc fail*/
  (*out) = new_buffer;
  (*outlength) = new_length;
  chunk_start = &(*out)[new_length - total_chunk_length];

  for(i = 0; i < total_chunk_length; i++) chunk_start[i] = chunk[i];

  return 0;
}