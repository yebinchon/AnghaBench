#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_22__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int* stream_map; int header_written; TYPE_22__** bsfs; TYPE_3__* avf; int /*<<< orphan*/  use_fifo; int /*<<< orphan*/ * fifo_options; } ;
typedef  TYPE_1__ TeeSlave ;
struct TYPE_29__ {char* key; char* value; } ;
struct TYPE_28__ {int nb_streams; TYPE_2__** streams; int /*<<< orphan*/  strict_std_compliance; int /*<<< orphan*/  flags; int /*<<< orphan*/  interrupt_callback; int /*<<< orphan*/  io_close; int /*<<< orphan*/  io_open; int /*<<< orphan*/  opaque; int /*<<< orphan*/  metadata; } ;
struct TYPE_27__ {int /*<<< orphan*/  codecpar; int /*<<< orphan*/  time_base; } ;
struct TYPE_26__ {int /*<<< orphan*/  par_in; int /*<<< orphan*/  time_base_in; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (TYPE_22__**) ; 
 int FUNC3 (TYPE_22__*) ; 
 int FUNC4 (char*,TYPE_22__**) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,char**,char,char) ; 
 int FUNC10 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC15 (char*) ; 
 char* FUNC16 (char*,int /*<<< orphan*/ ,char**) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_3__**,int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC19 (TYPE_3__*,TYPE_2__*,char const*) ; 
 TYPE_2__* FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int FUNC22 (TYPE_3__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC23 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC24 (TYPE_3__*,char*,int /*<<< orphan*/ **,char**) ; 
 int FUNC25 (char*,TYPE_1__*) ; 
 int FUNC26 (char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  slave_bsfs_spec_sep ; 
 int /*<<< orphan*/  slave_select_sep ; 
 int FUNC27 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(AVFormatContext *avf, char *slave, TeeSlave *tee_slave)
{
    int i, ret;
    AVDictionary *options = NULL, *bsf_options = NULL;
    AVDictionaryEntry *entry;
    char *filename;
    char *format = NULL, *select = NULL, *on_fail = NULL;
    char *use_fifo = NULL, *fifo_options_str = NULL;
    AVFormatContext *avf2 = NULL;
    AVStream *st, *st2;
    int stream_count;
    int fullret;
    char *subselect = NULL, *next_subselect = NULL, *first_subselect = NULL, *tmp_select = NULL;

    if ((ret = FUNC24(avf, slave, &options, &filename)) < 0)
        return ret;

#define STEAL_OPTION(option, field) do {                                \
        if ((entry = av_dict_get(options, option, NULL, 0))) {          \
            field = entry->value;                                       \
            entry->value = NULL; /* prevent it from being freed */      \
            av_dict_set(&options, option, NULL, 0);                     \
        }                                                               \
    } while (0)

    STEAL_OPTION("f", format);
    STEAL_OPTION("select", select);
    STEAL_OPTION("onfail", on_fail);
    STEAL_OPTION("use_fifo", use_fifo);
    STEAL_OPTION("fifo_options", fifo_options_str);
    entry = NULL;
    while ((entry = FUNC8(options, "bsfs", entry, AV_DICT_IGNORE_SUFFIX))) {
        /* trim out strlen("bsfs") characters from key */
        FUNC10(&bsf_options, entry->key + 4, entry->value, 0);
        FUNC10(&options, entry->key, NULL, 0);
    }

    ret = FUNC25(on_fail, tee_slave);
    if (ret < 0) {
        FUNC14(avf, AV_LOG_ERROR,
               "Invalid onfail option value, valid options are 'abort' and 'ignore'\n");
        goto end;
    }

    ret = FUNC26(use_fifo, fifo_options_str, tee_slave);
    if (ret < 0) {
        FUNC14(avf, AV_LOG_ERROR, "Error parsing fifo options: %s\n", FUNC11(ret));
        goto end;
    }

    if (tee_slave->use_fifo) {

        if (options) {
            char *format_options_str = NULL;
            ret = FUNC9(options, &format_options_str, '=', ':');
            if (ret < 0)
                goto end;

            ret = FUNC10(&tee_slave->fifo_options, "format_opts", format_options_str,
                              AV_DICT_DONT_STRDUP_VAL);
            if (ret < 0)
                goto end;
        }

        if (format) {
            ret = FUNC10(&tee_slave->fifo_options, "fifo_format", format,
                              AV_DICT_DONT_STRDUP_VAL);
            format = NULL;
            if (ret < 0)
                goto end;
        }

        FUNC7(&options);
        options = tee_slave->fifo_options;
    }
    ret = FUNC18(&avf2, NULL,
                                         tee_slave->use_fifo ? "fifo" :format, filename);
    if (ret < 0)
        goto end;
    tee_slave->avf = avf2;
    FUNC6(&avf2->metadata, avf->metadata, 0);
    avf2->opaque   = avf->opaque;
    avf2->io_open  = avf->io_open;
    avf2->io_close = avf->io_close;
    avf2->interrupt_callback = avf->interrupt_callback;
    avf2->flags = avf->flags;
    avf2->strict_std_compliance = avf->strict_std_compliance;

    tee_slave->stream_map = FUNC5(avf->nb_streams, sizeof(*tee_slave->stream_map));
    if (!tee_slave->stream_map) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    stream_count = 0;
    for (i = 0; i < avf->nb_streams; i++) {
        st = avf->streams[i];
        if (select) {
            tmp_select = FUNC15(select);  // av_strtok is destructive so we regenerate it in each loop
            if (!tmp_select) {
                ret = FUNC0(ENOMEM);
                goto end;
            }
            fullret = 0;
            first_subselect = tmp_select;
            next_subselect = NULL;
            while ((subselect = FUNC16(first_subselect, slave_select_sep, &next_subselect))) {
                first_subselect = NULL;

                ret = FUNC19(avf, avf->streams[i], subselect);
                if (ret < 0) {
                    FUNC14(avf, AV_LOG_ERROR,
                           "Invalid stream specifier '%s' for output '%s'\n",
                           subselect, slave);
                    goto end;
                }
                if (ret != 0) {
                    fullret = 1; // match
                    break;
                }
            }
            FUNC13(&tmp_select);

            if (fullret == 0) { /* no match */
                tee_slave->stream_map[i] = -1;
                continue;
            }
        }
        tee_slave->stream_map[i] = stream_count++;

        if (!(st2 = FUNC20(avf2, NULL))) {
            ret = FUNC0(ENOMEM);
            goto end;
        }

        ret = FUNC23(st2, st);
        if (ret < 0)
            goto end;
    }

    ret = FUNC22(avf2, filename, NULL);
    if (ret < 0) {
        FUNC14(avf, AV_LOG_ERROR, "Slave '%s': error opening: %s\n", slave,
               FUNC11(ret));
        goto end;
    }

    if ((ret = FUNC21(avf2, &options)) < 0) {
        FUNC14(avf, AV_LOG_ERROR, "Slave '%s': error writing header: %s\n",
               slave, FUNC11(ret));
        goto end;
    }
    tee_slave->header_written = 1;

    tee_slave->bsfs = FUNC5(avf2->nb_streams, sizeof(*tee_slave->bsfs));
    if (!tee_slave->bsfs) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    entry = NULL;
    while ((entry = FUNC8(bsf_options, "", NULL, AV_DICT_IGNORE_SUFFIX))) {
        const char *spec = entry->key;
        if (*spec) {
            if (FUNC27(spec, slave_bsfs_spec_sep) != 1) {
                FUNC14(avf, AV_LOG_ERROR,
                       "Specifier separator in '%s' is '%c', but only characters '%s' "
                       "are allowed\n", entry->key, *spec, slave_bsfs_spec_sep);
                ret = FUNC0(EINVAL);
                goto end;
            }
            spec++; /* consume separator */
        }

        for (i = 0; i < avf2->nb_streams; i++) {
            ret = FUNC19(avf2, avf2->streams[i], spec);
            if (ret < 0) {
                FUNC14(avf, AV_LOG_ERROR,
                       "Invalid stream specifier '%s' in bsfs option '%s' for slave "
                       "output '%s'\n", spec, entry->key, filename);
                goto end;
            }

            if (ret > 0) {
                FUNC14(avf, AV_LOG_DEBUG, "spec:%s bsfs:%s matches stream %d of slave "
                       "output '%s'\n", spec, entry->value, i, filename);
                if (tee_slave->bsfs[i]) {
                    FUNC14(avf, AV_LOG_WARNING,
                           "Duplicate bsfs specification associated to stream %d of slave "
                           "output '%s', filters will be ignored\n", i, filename);
                    continue;
                }
                ret = FUNC4(entry->value, &tee_slave->bsfs[i]);
                if (ret < 0) {
                    FUNC14(avf, AV_LOG_ERROR,
                           "Error parsing bitstream filter sequence '%s' associated to "
                           "stream %d of slave output '%s'\n", entry->value, i, filename);
                    goto end;
                }
            }
        }

        FUNC10(&bsf_options, entry->key, NULL, 0);
    }

    for (i = 0; i < avf->nb_streams; i++){
        int target_stream = tee_slave->stream_map[i];
        if (target_stream < 0)
            continue;

        if (!tee_slave->bsfs[target_stream]) {
            /* Add pass-through bitstream filter */
            ret = FUNC2(&tee_slave->bsfs[target_stream]);
            if (ret < 0) {
                FUNC14(avf, AV_LOG_ERROR,
                       "Failed to create pass-through bitstream filter: %s\n",
                       FUNC11(ret));
                goto end;
            }
        }

        tee_slave->bsfs[target_stream]->time_base_in = avf->streams[i]->time_base;
        ret = FUNC17(tee_slave->bsfs[target_stream]->par_in,
                                      avf->streams[i]->codecpar);
        if (ret < 0)
            goto end;

        ret = FUNC3(tee_slave->bsfs[target_stream]);
        if (ret < 0) {
            FUNC14(avf, AV_LOG_ERROR,
            "Failed to initialize bitstream filter(s): %s\n",
            FUNC11(ret));
            goto end;
        }
    }

    if (options) {
        entry = NULL;
        while ((entry = FUNC8(options, "", entry, AV_DICT_IGNORE_SUFFIX)))
            FUNC14(avf2, AV_LOG_ERROR, "Unknown option '%s'\n", entry->key);
        ret = AVERROR_OPTION_NOT_FOUND;
        goto end;
    }

end:
    FUNC12(format);
    FUNC12(select);
    FUNC12(on_fail);
    FUNC7(&options);
    FUNC7(&bsf_options);
    FUNC13(&tmp_select);
    return ret;
}