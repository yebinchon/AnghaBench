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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  blake2b_state ;
struct TYPE_3__ {int fanout; int depth; void** reserved; void** salt; void** personal; scalar_t__ inner_length; scalar_t__ node_depth; int /*<<< orphan*/  xof_length; int /*<<< orphan*/  node_offset; int /*<<< orphan*/  leaf_length; void* key_length; void* digest_length; } ;
typedef  TYPE_1__ blake2b_param ;

/* Variables and functions */
 int BLAKE2B_BLOCKBYTES ; 
 size_t BLAKE2B_KEYBYTES ; 
 size_t BLAKE2B_OUTBYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**,int) ; 
 int /*<<< orphan*/  FUNC2 (void**,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6( blake2b_state *S, size_t outlen, const void *key, size_t keylen )
{
  blake2b_param P[1];

  if ( ( !outlen ) || ( outlen > BLAKE2B_OUTBYTES ) ) return -1;

  if ( !key || !keylen || keylen > BLAKE2B_KEYBYTES ) return -1;

  P->digest_length = (uint8_t)outlen;
  P->key_length    = (uint8_t)keylen;
  P->fanout        = 1;
  P->depth         = 1;
  FUNC5( &P->leaf_length, 0 );
  FUNC5( &P->node_offset, 0 );
  FUNC5( &P->xof_length, 0 );
  P->node_depth    = 0;
  P->inner_length  = 0;
  FUNC3( P->reserved, 0, sizeof( P->reserved ) );
  FUNC3( P->salt,     0, sizeof( P->salt ) );
  FUNC3( P->personal, 0, sizeof( P->personal ) );

  if( FUNC0( S, P ) < 0 ) return -1;

  {
    uint8_t block[BLAKE2B_BLOCKBYTES];
    FUNC3( block, 0, BLAKE2B_BLOCKBYTES );
    FUNC2( block, key, keylen );
    FUNC1( S, block, BLAKE2B_BLOCKBYTES );
    FUNC4( block, BLAKE2B_BLOCKBYTES ); /* Burn the key from stack */
  }
  return 0;
}