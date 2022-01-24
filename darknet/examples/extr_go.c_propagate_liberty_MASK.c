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
 int FUNC0 (float*,int) ; 

__attribute__((used)) static void FUNC1(float *board, int *lib, int *visited, int row, int col, int side)
{
    if (row < 0 || row > 18 || col < 0 || col > 18) return;
    int index = row*19 + col;
    if (FUNC0(board,index) != side) return;
    if (visited[index]) return;
    visited[index] = 1;
    lib[index] += 1;
    FUNC1(board, lib, visited, row+1, col, side);
    FUNC1(board, lib, visited, row-1, col, side);
    FUNC1(board, lib, visited, row, col+1, side);
    FUNC1(board, lib, visited, row, col-1, side);
}