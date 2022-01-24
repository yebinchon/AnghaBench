#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  fc; } ;
struct TYPE_16__ {int auxiliary_info_sample_count; scalar_t__ auxiliary_info_default_size; scalar_t__ auxiliary_offsets_count; int /*<<< orphan*/  auxiliary_info_sizes; scalar_t__ nb_encrypted_samples; } ;
struct TYPE_14__ {TYPE_1__* default_encrypted_sample; } ;
struct TYPE_15__ {TYPE_2__ cenc; } ;
struct TYPE_13__ {unsigned int scheme; } ;
typedef  TYPE_3__ MOVStreamContext ;
typedef  TYPE_4__ MOVEncryptionIndex ;
typedef  TYPE_5__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 unsigned int FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__**,TYPE_3__**) ; 
 int FUNC6 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVEncryptionIndex *encryption_index;
    MOVStreamContext *sc;
    int ret;
    unsigned int sample_count, aux_info_type, aux_info_param;

    ret = FUNC5(c, &encryption_index, &sc);
    if (ret != 1)
        return ret;

    if (encryption_index->nb_encrypted_samples) {
        // This can happen if we have both saio/saiz and senc atoms.
        FUNC1(c->fc, AV_LOG_DEBUG, "Ignoring duplicate encryption info in saiz\n");
        return 0;
    }

    if (encryption_index->auxiliary_info_sample_count) {
        FUNC1(c->fc, AV_LOG_ERROR, "Duplicate saiz atom\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC2(pb); /* version */
    if (FUNC3(pb) & 0x01) {  /* flags */
        aux_info_type = FUNC4(pb);
        aux_info_param = FUNC4(pb);
        if (sc->cenc.default_encrypted_sample) {
            if (aux_info_type != sc->cenc.default_encrypted_sample->scheme) {
                FUNC1(c->fc, AV_LOG_DEBUG, "Ignoring saiz box with non-zero aux_info_type\n");
                return 0;
            }
            if (aux_info_param != 0) {
                FUNC1(c->fc, AV_LOG_DEBUG, "Ignoring saiz box with non-zero aux_info_type_parameter\n");
                return 0;
            }
        } else {
            // Didn't see 'schm' or 'tenc', so this isn't encrypted.
            if ((aux_info_type == FUNC0('c','e','n','c') ||
                 aux_info_type == FUNC0('c','e','n','s') ||
                 aux_info_type == FUNC0('c','b','c','1') ||
                 aux_info_type == FUNC0('c','b','c','s')) &&
                aux_info_param == 0) {
                FUNC1(c->fc, AV_LOG_ERROR, "Saw encrypted saiz without schm/tenc\n");
                return AVERROR_INVALIDDATA;
            } else {
                return 0;
            }
        }
    } else if (!sc->cenc.default_encrypted_sample) {
        // Didn't see 'schm' or 'tenc', so this isn't encrypted.
        return 0;
    }

    encryption_index->auxiliary_info_default_size = FUNC2(pb);
    sample_count = FUNC4(pb);
    encryption_index->auxiliary_info_sample_count = sample_count;

    if (encryption_index->auxiliary_info_default_size == 0) {
        ret = FUNC7(pb, sample_count, &encryption_index->auxiliary_info_sizes);
        if (ret < 0) {
            FUNC1(c->fc, AV_LOG_ERROR, "Failed to read the auxiliary info\n");
            return ret;
        }
    }

    if (encryption_index->auxiliary_offsets_count) {
        return FUNC6(c, sc, pb, encryption_index);
    }

    return 0;
}