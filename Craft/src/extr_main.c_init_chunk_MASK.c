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
struct TYPE_4__ {int p; int q; int /*<<< orphan*/  lights; int /*<<< orphan*/  map; int /*<<< orphan*/  signs; scalar_t__ sign_buffer; scalar_t__ buffer; scalar_t__ sign_faces; scalar_t__ faces; } ;
typedef  int /*<<< orphan*/  SignList ;
typedef  int /*<<< orphan*/  Map ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 int CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(Chunk *chunk, int p, int q) {
    chunk->p = p;
    chunk->q = q;
    chunk->faces = 0;
    chunk->sign_faces = 0;
    chunk->buffer = 0;
    chunk->sign_buffer = 0;
    FUNC1(chunk);
    SignList *signs = &chunk->signs;
    FUNC3(signs, 16);
    FUNC0(signs, p, q);
    Map *block_map = &chunk->map;
    Map *light_map = &chunk->lights;
    int dx = p * CHUNK_SIZE - 1;
    int dy = 0;
    int dz = q * CHUNK_SIZE - 1;
    FUNC2(block_map, dx, dy, dz, 0x7fff);
    FUNC2(light_map, dx, dy, dz, 0xf);
}