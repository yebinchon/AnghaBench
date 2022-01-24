#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct TYPE_29__ {scalar_t__ eof_reached; } ;
struct TYPE_25__ {scalar_t__ base_data_offset; } ;
struct TYPE_24__ {scalar_t__ current; } ;
struct TYPE_28__ {int /*<<< orphan*/  fc; TYPE_4__ fragment; TYPE_3__ frag_index; } ;
struct TYPE_27__ {int auxiliary_offsets_count; scalar_t__ auxiliary_info_sample_count; void** auxiliary_offsets; scalar_t__ nb_encrypted_samples; } ;
struct TYPE_23__ {TYPE_1__* default_encrypted_sample; } ;
struct TYPE_26__ {TYPE_2__ cenc; } ;
struct TYPE_22__ {unsigned int scheme; } ;
typedef  TYPE_5__ MOVStreamContext ;
typedef  TYPE_6__ MOVEncryptionIndex ;
typedef  TYPE_7__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  TYPE_8__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int INT_MAX ; 
 unsigned int FUNC3 (char,char,char,char) ; 
 void** FUNC4 (void**,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (void***) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC7 (TYPE_8__*) ; 
 int FUNC8 (TYPE_8__*) ; 
 void* FUNC9 (TYPE_8__*) ; 
 void* FUNC10 (TYPE_8__*) ; 
 int FUNC11 (TYPE_7__*,TYPE_6__**,TYPE_5__**) ; 
 int FUNC12 (TYPE_7__*,TYPE_5__*,TYPE_8__*,TYPE_6__*) ; 

__attribute__((used)) static int FUNC13(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    uint64_t *auxiliary_offsets;
    MOVEncryptionIndex *encryption_index;
    MOVStreamContext *sc;
    int i, ret;
    unsigned int version, entry_count, aux_info_type, aux_info_param;
    unsigned int alloc_size = 0;

    ret = FUNC11(c, &encryption_index, &sc);
    if (ret != 1)
        return ret;

    if (encryption_index->nb_encrypted_samples) {
        // This can happen if we have both saio/saiz and senc atoms.
        FUNC6(c->fc, AV_LOG_DEBUG, "Ignoring duplicate encryption info in saio\n");
        return 0;
    }

    if (encryption_index->auxiliary_offsets_count) {
        FUNC6(c->fc, AV_LOG_ERROR, "Duplicate saio atom\n");
        return AVERROR_INVALIDDATA;
    }

    version = FUNC7(pb); /* version */
    if (FUNC8(pb) & 0x01) {  /* flags */
        aux_info_type = FUNC9(pb);
        aux_info_param = FUNC9(pb);
        if (sc->cenc.default_encrypted_sample) {
            if (aux_info_type != sc->cenc.default_encrypted_sample->scheme) {
                FUNC6(c->fc, AV_LOG_DEBUG, "Ignoring saio box with non-zero aux_info_type\n");
                return 0;
            }
            if (aux_info_param != 0) {
                FUNC6(c->fc, AV_LOG_DEBUG, "Ignoring saio box with non-zero aux_info_type_parameter\n");
                return 0;
            }
        } else {
            // Didn't see 'schm' or 'tenc', so this isn't encrypted.
            if ((aux_info_type == FUNC3('c','e','n','c') ||
                 aux_info_type == FUNC3('c','e','n','s') ||
                 aux_info_type == FUNC3('c','b','c','1') ||
                 aux_info_type == FUNC3('c','b','c','s')) &&
                aux_info_param == 0) {
                FUNC6(c->fc, AV_LOG_ERROR, "Saw encrypted saio without schm/tenc\n");
                return AVERROR_INVALIDDATA;
            } else {
                return 0;
            }
        }
    } else if (!sc->cenc.default_encrypted_sample) {
        // Didn't see 'schm' or 'tenc', so this isn't encrypted.
        return 0;
    }

    entry_count = FUNC9(pb);
    if (entry_count >= INT_MAX / sizeof(*auxiliary_offsets))
        return FUNC0(ENOMEM);

    for (i = 0; i < entry_count && !pb->eof_reached; i++) {
        unsigned int min_offsets = FUNC2(FUNC1(i + 1, 1024), entry_count);
        auxiliary_offsets = FUNC4(
            encryption_index->auxiliary_offsets, &alloc_size,
            min_offsets * sizeof(*auxiliary_offsets));
        if (!auxiliary_offsets) {
            FUNC5(&encryption_index->auxiliary_offsets);
            return FUNC0(ENOMEM);
        }
        encryption_index->auxiliary_offsets = auxiliary_offsets;

        if (version == 0) {
            encryption_index->auxiliary_offsets[i] = FUNC9(pb);
        } else {
            encryption_index->auxiliary_offsets[i] = FUNC10(pb);
        }
        if (c->frag_index.current >= 0) {
            encryption_index->auxiliary_offsets[i] += c->fragment.base_data_offset;
        }
    }

    if (pb->eof_reached) {
        FUNC6(c->fc, AV_LOG_ERROR, "Hit EOF while reading saio\n");
        FUNC5(&encryption_index->auxiliary_offsets);
        return AVERROR_INVALIDDATA;
    }

    encryption_index->auxiliary_offsets_count = entry_count;

    if (encryption_index->auxiliary_info_sample_count) {
        return FUNC12(c, sc, pb, encryption_index);
    }

    return 0;
}