#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int offset; int /*<<< orphan*/ * link_penalty; int /*<<< orphan*/  fi; struct TYPE_7__* next; } ;
struct TYPE_6__ {int /*<<< orphan*/  nb_headers_found; int /*<<< orphan*/  avctx; TYPE_2__* headers; int /*<<< orphan*/  wrap_buf_allocated_size; int /*<<< orphan*/  wrap_buf; } ;
typedef  TYPE_1__ FLACParseContext ;
typedef  TYPE_2__ FLACHeaderMarker ;
typedef  int /*<<< orphan*/  FLACFrameInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FLAC_HEADER_NOT_PENALIZED_YET ; 
 int FLAC_MAX_SEQUENTIAL_HEADERS ; 
 int /*<<< orphan*/  MAX_FRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(FLACParseContext *fpc, int offset)
{
    FLACFrameInfo fi;
    uint8_t *header_buf;
    int size = 0;
    header_buf = FUNC3(fpc, offset,
                                     MAX_FRAME_HEADER_SIZE,
                                     &fpc->wrap_buf,
                                     &fpc->wrap_buf_allocated_size);
    if (FUNC4(fpc->avctx, header_buf, &fi)) {
        FLACHeaderMarker **end_handle = &fpc->headers;
        int i;

        size = 0;
        while (*end_handle) {
            end_handle = &(*end_handle)->next;
            size++;
        }

        *end_handle = FUNC2(sizeof(**end_handle));
        if (!*end_handle) {
            FUNC1(fpc->avctx, AV_LOG_ERROR,
                   "couldn't allocate FLACHeaderMarker\n");
            return FUNC0(ENOMEM);
        }
        (*end_handle)->fi     = fi;
        (*end_handle)->offset = offset;

        for (i = 0; i < FLAC_MAX_SEQUENTIAL_HEADERS; i++)
            (*end_handle)->link_penalty[i] = FLAC_HEADER_NOT_PENALIZED_YET;

        fpc->nb_headers_found++;
        size++;
    }
    return size;
}