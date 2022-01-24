#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_10__ {scalar_t__ logical_pos; scalar_t__ size; scalar_t__ physical_pos; } ;
struct TYPE_9__ {scalar_t__ logical_pos; scalar_t__ cache_pos; scalar_t__ inner_pos; int is_true_eof; scalar_t__ end; int /*<<< orphan*/  cache_miss; int /*<<< orphan*/  inner; int /*<<< orphan*/  cache_hit; int /*<<< orphan*/  fd; int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ Context ;
typedef  TYPE_3__ CacheEntry ;

/* Variables and functions */
 scalar_t__ AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  cmp ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(URLContext *h, unsigned char *buf, int size)
{
    Context *c= h->priv_data;
    CacheEntry *entry, *next[2] = {NULL, NULL};
    int64_t r;

    entry = FUNC5(c->root, &c->logical_pos, cmp, (void**)next);

    if (!entry)
        entry = next[0];

    if (entry) {
        int64_t in_block_pos = c->logical_pos - entry->logical_pos;
        FUNC3(entry->logical_pos <= c->logical_pos);
        if (in_block_pos < entry->size) {
            int64_t physical_target = entry->physical_pos + in_block_pos;

            if (c->cache_pos != physical_target) {
                r = FUNC8(c->fd, physical_target, SEEK_SET);
            } else
                r = c->cache_pos;

            if (r >= 0) {
                c->cache_pos = r;
                r = FUNC9(c->fd, buf, FUNC1(size, entry->size - in_block_pos));
            }

            if (r > 0) {
                c->cache_pos += r;
                c->logical_pos += r;
                c->cache_hit ++;
                return r;
            }
        }
    }

    // Cache miss or some kind of fault with the cache

    if (c->logical_pos != c->inner_pos) {
        r = FUNC7(c->inner, c->logical_pos, SEEK_SET);
        if (r<0) {
            FUNC4(h, AV_LOG_ERROR, "Failed to perform internal seek\n");
            return r;
        }
        c->inner_pos = r;
    }

    r = FUNC6(c->inner, buf, size);
    if (r == AVERROR_EOF && size>0) {
        c->is_true_eof = 1;
        FUNC3(c->end >= c->logical_pos);
    }
    if (r<=0)
        return r;
    c->inner_pos += r;

    c->cache_miss ++;

    FUNC2(h, buf, r);
    c->logical_pos += r;
    c->end = FUNC0(c->end, c->logical_pos);

    return r;
}