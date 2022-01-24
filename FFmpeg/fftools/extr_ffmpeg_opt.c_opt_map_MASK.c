#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * streams; } ;
struct TYPE_10__ {int nb_streams; int ist_index; TYPE_5__* ctx; } ;
struct TYPE_9__ {scalar_t__ user_set_discard; } ;
struct TYPE_8__ {int nb_stream_maps; TYPE_1__* stream_maps; } ;
struct TYPE_7__ {int file_index; size_t stream_index; int disabled; int sync_file_index; int sync_stream_index; int /*<<< orphan*/  linklabel; } ;
typedef  TYPE_1__ StreamMap ;
typedef  TYPE_2__ OptionsContext ;

/* Variables and functions */
 scalar_t__ AVDISCARD_ALL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (char const*) ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_4__** input_files ; 
 TYPE_3__** input_streams ; 
 int nb_input_files ; 
 char* FUNC8 (char*,char) ; 
 int FUNC9 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    StreamMap *m = NULL;
    int i, negative = 0, file_idx, disabled = 0;
    int sync_file_idx = -1, sync_stream_idx = 0;
    char *p, *sync;
    char *map;
    char *allow_unused;

    if (*arg == '-') {
        negative = 1;
        arg++;
    }
    map = FUNC5(arg);
    if (!map)
        return FUNC0(ENOMEM);

    /* parse sync stream first, just pick first matching stream */
    if ((sync = FUNC8(map, ','))) {
        *sync = 0;
        sync_file_idx = FUNC9(sync + 1, &sync, 0);
        if (sync_file_idx >= nb_input_files || sync_file_idx < 0) {
            FUNC4(NULL, AV_LOG_FATAL, "Invalid sync file index: %d.\n", sync_file_idx);
            FUNC7(1);
        }
        if (*sync)
            sync++;
        for (i = 0; i < input_files[sync_file_idx]->nb_streams; i++)
            if (FUNC6(input_files[sync_file_idx]->ctx,
                                       input_files[sync_file_idx]->ctx->streams[i], sync) == 1) {
                sync_stream_idx = i;
                break;
            }
        if (i == input_files[sync_file_idx]->nb_streams) {
            FUNC4(NULL, AV_LOG_FATAL, "Sync stream specification in map %s does not "
                                       "match any streams.\n", arg);
            FUNC7(1);
        }
        if (input_streams[input_files[sync_file_idx]->ist_index + sync_stream_idx]->user_set_discard == AVDISCARD_ALL) {
            FUNC4(NULL, AV_LOG_FATAL, "Sync stream specification in map %s matches a disabled input "
                                       "stream.\n", arg);
            FUNC7(1);
        }
    }


    if (map[0] == '[') {
        /* this mapping refers to lavfi output */
        const char *c = map + 1;
        FUNC1(o->stream_maps, o->nb_stream_maps);
        m = &o->stream_maps[o->nb_stream_maps - 1];
        m->linklabel = FUNC3(&c, "]");
        if (!m->linklabel) {
            FUNC4(NULL, AV_LOG_ERROR, "Invalid output link label: %s.\n", map);
            FUNC7(1);
        }
    } else {
        if ((allow_unused = FUNC8(map, '?')))
            *allow_unused = 0;
        file_idx = FUNC9(map, &p, 0);
        if (file_idx >= nb_input_files || file_idx < 0) {
            FUNC4(NULL, AV_LOG_FATAL, "Invalid input file index: %d.\n", file_idx);
            FUNC7(1);
        }
        if (negative)
            /* disable some already defined maps */
            for (i = 0; i < o->nb_stream_maps; i++) {
                m = &o->stream_maps[i];
                if (file_idx == m->file_index &&
                    FUNC6(input_files[m->file_index]->ctx,
                                           input_files[m->file_index]->ctx->streams[m->stream_index],
                                           *p == ':' ? p + 1 : p) > 0)
                    m->disabled = 1;
            }
        else
            for (i = 0; i < input_files[file_idx]->nb_streams; i++) {
                if (FUNC6(input_files[file_idx]->ctx, input_files[file_idx]->ctx->streams[i],
                            *p == ':' ? p + 1 : p) <= 0)
                    continue;
                if (input_streams[input_files[file_idx]->ist_index + i]->user_set_discard == AVDISCARD_ALL) {
                    disabled = 1;
                    continue;
                }
                FUNC1(o->stream_maps, o->nb_stream_maps);
                m = &o->stream_maps[o->nb_stream_maps - 1];

                m->file_index   = file_idx;
                m->stream_index = i;

                if (sync_file_idx >= 0) {
                    m->sync_file_index   = sync_file_idx;
                    m->sync_stream_index = sync_stream_idx;
                } else {
                    m->sync_file_index   = file_idx;
                    m->sync_stream_index = i;
                }
            }
    }

    if (!m) {
        if (allow_unused) {
            FUNC4(NULL, AV_LOG_VERBOSE, "Stream map '%s' matches no streams; ignoring.\n", arg);
        } else if (disabled) {
            FUNC4(NULL, AV_LOG_FATAL, "Stream map '%s' matches disabled streams.\n"
                                       "To ignore this, add a trailing '?' to the map.\n", arg);
            FUNC7(1);
        } else {
            FUNC4(NULL, AV_LOG_FATAL, "Stream map '%s' matches no streams.\n"
                                       "To ignore this, add a trailing '?' to the map.\n", arg);
            FUNC7(1);
        }
    }

    FUNC2(&map);
    return 0;
}