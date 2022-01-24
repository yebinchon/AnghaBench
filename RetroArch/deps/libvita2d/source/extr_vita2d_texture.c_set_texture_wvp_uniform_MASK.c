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
 int /*<<< orphan*/  _vita2d_context ; 
 int /*<<< orphan*/  _vita2d_ortho_matrix ; 
 int /*<<< orphan*/  _vita2d_textureWvpParam ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2()
{
	void *vertex_wvp_buffer;
	FUNC0(_vita2d_context, &vertex_wvp_buffer);
	FUNC1(vertex_wvp_buffer, _vita2d_textureWvpParam, 0, 16, _vita2d_ortho_matrix);
}