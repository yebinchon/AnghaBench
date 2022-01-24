#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
struct TYPE_22__ {unsigned int subsample_count; TYPE_13__* subsamples; int /*<<< orphan*/  iv; } ;
struct TYPE_21__ {scalar_t__ eof_reached; } ;
struct TYPE_20__ {int /*<<< orphan*/  fc; } ;
struct TYPE_18__ {scalar_t__ per_sample_iv_size; int /*<<< orphan*/  default_encrypted_sample; } ;
struct TYPE_19__ {TYPE_1__ cenc; } ;
struct TYPE_17__ {int /*<<< orphan*/  bytes_of_protected_data; void* bytes_of_clear_data; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ MOVContext ;
typedef  int /*<<< orphan*/  AVSubsampleEncryptionInfo ;
typedef  TYPE_4__ AVIOContext ;
typedef  TYPE_5__ AVEncryptionInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_13__* FUNC5 (unsigned int,int) ; 
 void* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(MOVContext *c, AVIOContext *pb, MOVStreamContext *sc, AVEncryptionInfo **sample, int use_subsamples)
{
    int i;
    unsigned int subsample_count;
    AVSubsampleEncryptionInfo *subsamples;

    if (!sc->cenc.default_encrypted_sample) {
        FUNC4(c->fc, AV_LOG_ERROR, "Missing schm or tenc\n");
        return AVERROR_INVALIDDATA;
    }

    *sample = FUNC1(sc->cenc.default_encrypted_sample);
    if (!*sample)
        return FUNC0(ENOMEM);

    if (sc->cenc.per_sample_iv_size != 0) {
        if (FUNC8(pb, (*sample)->iv, sc->cenc.per_sample_iv_size) != sc->cenc.per_sample_iv_size) {
            FUNC4(c->fc, AV_LOG_ERROR, "failed to read the initialization vector\n");
            FUNC2(*sample);
            *sample = NULL;
            return AVERROR_INVALIDDATA;
        }
    }

    if (use_subsamples) {
        subsample_count = FUNC6(pb);
        FUNC3((*sample)->subsamples);
        (*sample)->subsamples = FUNC5(subsample_count, sizeof(*subsamples));
        if (!(*sample)->subsamples) {
            FUNC2(*sample);
            *sample = NULL;
            return FUNC0(ENOMEM);
        }

        for (i = 0; i < subsample_count && !pb->eof_reached; i++) {
            (*sample)->subsamples[i].bytes_of_clear_data = FUNC6(pb);
            (*sample)->subsamples[i].bytes_of_protected_data = FUNC7(pb);
        }

        if (pb->eof_reached) {
            FUNC4(c->fc, AV_LOG_ERROR, "hit EOF while reading sub-sample encryption info\n");
            FUNC2(*sample);
            *sample = NULL;
            return AVERROR_INVALIDDATA;
        }
        (*sample)->subsample_count = subsample_count;
    }

    return 0;
}