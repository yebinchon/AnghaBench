#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  key; } ;
struct TYPE_5__ {int expect; int inside_chunks; int has_chunks; int part; TYPE_1__ current; } ;
typedef  TYPE_2__ unpack_user ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int expect_chunks_begin ; 
#define  expect_key 129 
 void* expect_map_item_end ; 
#define  expect_map_key 128 
 int expect_size ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static inline int FUNC3(unpack_user* u, const char* b, const char* p, unsigned int length)
{
    /* raw = what Borg uses for binary stuff and strings as well */
    /* Note: p points to an internal buffer which contains l bytes. */
    (void)b;

    switch(u->expect) {
    case expect_key:
        if(length != 32) {
            FUNC0("Incorrect key length");
            return -1;
        }
        FUNC2(u->current.key, p, 32);
        u->expect = expect_size;
        break;
    case expect_map_key:
        if(length == 6 && !FUNC1("chunks", p, 6)) {
            u->expect = expect_chunks_begin;
            u->inside_chunks = 1;
            u->has_chunks = 1;
        } else if(length == 4 && !FUNC1("part", p, 4)) {
            u->expect = expect_map_item_end;
            u->part = 1;
        } else {
            u->expect = expect_map_item_end;
        }
        break;
    default:
        if(u->inside_chunks) {
            FUNC0("Unexpected bytes in chunks structure");
            return -1;
        }
    }
    return 0;
}