#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_19__ {unsigned int num_key_ids; unsigned int data_size; struct TYPE_19__* next; int /*<<< orphan*/ * data; int /*<<< orphan*/ ** key_ids; int /*<<< orphan*/ * system_id; } ;
struct TYPE_18__ {scalar_t__ eof_reached; } ;
struct TYPE_17__ {TYPE_11__* fc; } ;
struct TYPE_16__ {int nb_streams; int /*<<< orphan*/ ** streams; } ;
typedef  TYPE_1__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVEncryptionInitInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_ENCRYPTION_INIT_INFO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int INT_MAX ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,size_t*) ; 
 TYPE_3__* FUNC4 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** FUNC7 (int /*<<< orphan*/ **,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 unsigned int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 unsigned int FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC18 (TYPE_2__*,unsigned int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC19(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVEncryptionInitInfo *info, *old_init_info;
    uint8_t **key_ids;
    AVStream *st;
    uint8_t *side_data, *extra_data, *old_side_data;
    size_t side_data_size;
    int ret = 0, old_side_data_size;
    unsigned int version, kid_count, extra_data_size, alloc_size = 0;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];

    version = FUNC14(pb); /* version */
    FUNC15(pb);  /* flags */

    info = FUNC4(/* system_id_size */ 16, /* num_key_ids */ 0,
                                         /* key_id_size */ 16, /* data_size */ 0);
    if (!info)
        return FUNC0(ENOMEM);

    if (FUNC17(pb, info->system_id, 16) != 16) {
        FUNC10(c->fc, AV_LOG_ERROR, "Failed to read the system id\n");
        ret = AVERROR_INVALIDDATA;
        goto finish;
    }

    if (version > 0) {
        kid_count = FUNC16(pb);
        if (kid_count >= INT_MAX / sizeof(*key_ids))
            return FUNC0(ENOMEM);

        for (unsigned int i = 0; i < kid_count && !pb->eof_reached; i++) {
            unsigned int min_kid_count = FUNC2(FUNC1(i + 1, 1024), kid_count);
            key_ids = FUNC7(info->key_ids, &alloc_size,
                                      min_kid_count * sizeof(*key_ids));
            if (!key_ids) {
                ret = FUNC0(ENOMEM);
                goto finish;
            }
            info->key_ids = key_ids;

            info->key_ids[i] = FUNC11(16);
            if (!info->key_ids[i]) {
                ret = FUNC0(ENOMEM);
                goto finish;
            }
            info->num_key_ids = i + 1;

            if (FUNC17(pb, info->key_ids[i], 16) != 16) {
                FUNC10(c->fc, AV_LOG_ERROR, "Failed to read the key id\n");
                ret = AVERROR_INVALIDDATA;
                goto finish;
            }
        }

        if (pb->eof_reached) {
            FUNC10(c->fc, AV_LOG_ERROR, "Hit EOF while reading pssh\n");
            ret = AVERROR_INVALIDDATA;
            goto finish;
        }
    }

    extra_data_size = FUNC16(pb);
    ret = FUNC18(pb, extra_data_size, &extra_data);
    if (ret < 0)
        goto finish;

    FUNC9(&info->data);  // malloc(0) may still allocate something.
    info->data = extra_data;
    info->data_size = extra_data_size;

    // If there is existing initialization data, append to the list.
    old_side_data = FUNC13(st, AV_PKT_DATA_ENCRYPTION_INIT_INFO, &old_side_data_size);
    if (old_side_data) {
        old_init_info = FUNC6(old_side_data, old_side_data_size);
        if (old_init_info) {
            // Append to the end of the list.
            for (AVEncryptionInitInfo *cur = old_init_info;; cur = cur->next) {
                if (!cur->next) {
                    cur->next = info;
                    break;
                }
            }
            info = old_init_info;
        } else {
            // Assume existing side-data will be valid, so the only error we could get is OOM.
            ret = FUNC0(ENOMEM);
            goto finish;
        }
    }

    side_data = FUNC3(info, &side_data_size);
    if (!side_data) {
        ret = FUNC0(ENOMEM);
        goto finish;
    }
    ret = FUNC12(st, AV_PKT_DATA_ENCRYPTION_INIT_INFO,
                                  side_data, side_data_size);
    if (ret < 0)
        FUNC8(side_data);

finish:
    FUNC5(info);
    return ret;
}