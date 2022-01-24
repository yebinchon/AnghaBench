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
struct TYPE_5__ {void* opaque; void* zfree; void* zalloc; } ;
typedef  TYPE_1__ z_stream ;

/* Variables and functions */
 void* Z_NULL ; 
 scalar_t__ Z_OK ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int tmpblock_size)
{
    z_stream zstream;
    int size;

    zstream.zalloc = Z_NULL;
    zstream.zfree  = Z_NULL;
    zstream.opaque = Z_NULL;
    if (FUNC2(&zstream, 0) != Z_OK)
        return -1;
    size = FUNC0(&zstream, tmpblock_size);
    FUNC1(&zstream);

    return size;
}