#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int partitions; int* partition_to_class; int nclasses; int multiplier; int rangebits; int values; TYPE_2__* list; TYPE_1__* classes; } ;
typedef  TYPE_3__ vorbis_enc_floor ;
struct TYPE_6__ {int x; } ;
struct TYPE_5__ {int dim; int subclass; int masterbook; int* books; } ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(PutBitContext *pb, vorbis_enc_floor *fc)
{
    int i;

    FUNC0(pb, 16, 1); // type, only floor1 is supported

    FUNC0(pb, 5, fc->partitions);

    for (i = 0; i < fc->partitions; i++)
        FUNC0(pb, 4, fc->partition_to_class[i]);

    for (i = 0; i < fc->nclasses; i++) {
        int j, books;

        FUNC0(pb, 3, fc->classes[i].dim - 1);
        FUNC0(pb, 2, fc->classes[i].subclass);

        if (fc->classes[i].subclass)
            FUNC0(pb, 8, fc->classes[i].masterbook);

        books = (1 << fc->classes[i].subclass);

        for (j = 0; j < books; j++)
            FUNC0(pb, 8, fc->classes[i].books[j] + 1);
    }

    FUNC0(pb, 2, fc->multiplier - 1);
    FUNC0(pb, 4, fc->rangebits);

    for (i = 2; i < fc->values; i++)
        FUNC0(pb, fc->rangebits, fc->list[i].x);
}