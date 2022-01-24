#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* url; TYPE_2__* priv_data; } ;
struct TYPE_11__ {scalar_t__ safe; unsigned int nb_files; TYPE_1__* files; } ;
struct TYPE_10__ {char* url; void* user_duration; void* outpoint; void* inpoint; void* next_dts; void* duration; void* start_time; } ;
typedef  TYPE_1__ ConcatFile ;
typedef  TYPE_2__ ConcatContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void* AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (unsigned int,int) ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC6 (size_t) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,size_t) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char const*) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *avf, char *filename, ConcatFile **rfile,
                    unsigned *nb_files_alloc)
{
    ConcatContext *cat = avf->priv_data;
    ConcatFile *file;
    char *url = NULL;
    const char *proto;
    size_t url_len, proto_len;
    int ret;

    if (cat->safe > 0 && !FUNC12(filename)) {
        FUNC5(avf, AV_LOG_ERROR, "Unsafe file name '%s'\n", filename);
        FUNC1(FUNC0(EPERM));
    }

    proto = FUNC8(filename);
    proto_len = proto ? FUNC13(proto) : 0;
    if (proto && !FUNC10(filename, proto, proto_len) &&
        (filename[proto_len] == ':' || filename[proto_len] == ',')) {
        url = filename;
        filename = NULL;
    } else {
        url_len = FUNC13(avf->url) + FUNC13(filename) + 16;
        if (!(url = FUNC6(url_len)))
            FUNC1(FUNC0(ENOMEM));
        FUNC9(url, url_len, avf->url, filename);
        FUNC4(&filename);
    }

    if (cat->nb_files >= *nb_files_alloc) {
        size_t n = FUNC2(*nb_files_alloc * 2, 16);
        ConcatFile *new_files;
        if (n <= cat->nb_files || n > SIZE_MAX / sizeof(*cat->files) ||
            !(new_files = FUNC7(cat->files, n * sizeof(*cat->files))))
            FUNC1(FUNC0(ENOMEM));
        cat->files = new_files;
        *nb_files_alloc = n;
    }

    file = &cat->files[cat->nb_files++];
    FUNC11(file, 0, sizeof(*file));
    *rfile = file;

    file->url        = url;
    file->start_time = AV_NOPTS_VALUE;
    file->duration   = AV_NOPTS_VALUE;
    file->next_dts   = AV_NOPTS_VALUE;
    file->inpoint    = AV_NOPTS_VALUE;
    file->outpoint   = AV_NOPTS_VALUE;
    file->user_duration = AV_NOPTS_VALUE;

    return 0;

fail:
    FUNC3(url);
    FUNC3(filename);
    return ret;
}