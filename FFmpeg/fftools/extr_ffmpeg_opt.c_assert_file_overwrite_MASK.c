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
struct TYPE_7__ {TYPE_2__* ctx; } ;
struct TYPE_6__ {char* url; TYPE_1__* iformat; } ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_3__ InputFile ;

/* Variables and functions */
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ file_overwrite ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__** input_files ; 
 int nb_input_files ; 
 scalar_t__ no_file_overwrite ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stdin_interaction ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(const char *filename)
{
    const char *proto_name = FUNC2(filename);

    if (file_overwrite && no_file_overwrite) {
        FUNC5(stderr, "Error, both -y and -n supplied. Exiting.\n");
        FUNC3(1);
    }

    if (!file_overwrite) {
        if (proto_name && !FUNC8(proto_name, "file") && FUNC1(filename, 0) == 0) {
            if (stdin_interaction && !no_file_overwrite) {
                FUNC5(stderr,"File '%s' already exists. Overwrite? [y/N] ", filename);
                FUNC4(stderr);
                FUNC9();
                FUNC7(SIGINT, SIG_DFL);
                if (!FUNC6()) {
                    FUNC0(NULL, AV_LOG_FATAL, "Not overwriting - exiting\n");
                    FUNC3(1);
                }
                FUNC10();
            }
            else {
                FUNC0(NULL, AV_LOG_FATAL, "File '%s' already exists. Exiting.\n", filename);
                FUNC3(1);
            }
        }
    }

    if (proto_name && !FUNC8(proto_name, "file")) {
        for (int i = 0; i < nb_input_files; i++) {
             InputFile *file = input_files[i];
             if (file->ctx->iformat->flags & AVFMT_NOFILE)
                 continue;
             if (!FUNC8(filename, file->ctx->url)) {
                 FUNC0(NULL, AV_LOG_FATAL, "Output %s same as Input #%d - exiting\n", filename, i);
                 FUNC0(NULL, AV_LOG_WARNING, "FFmpeg cannot edit existing files in-place.\n");
                 FUNC3(1);
             }
        }
    }
}