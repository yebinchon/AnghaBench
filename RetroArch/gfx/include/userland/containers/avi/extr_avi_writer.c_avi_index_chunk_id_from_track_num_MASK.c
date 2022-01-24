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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  track_num_buf ;
typedef  scalar_t__ VC_CONTAINER_FOURCC_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(VC_CONTAINER_FOURCC_T *p_chunk_id,
   unsigned int track_num )
{
   VC_CONTAINER_FOURCC_T chunk_id = 0;
   char track_num_buf[3];

   chunk_id = FUNC0('i','x','0','0');

   FUNC2(track_num_buf, sizeof(track_num_buf), "%02d", track_num);
   FUNC1(((uint8_t*)&chunk_id) + 2, track_num_buf, 2);

   *p_chunk_id = chunk_id;
}