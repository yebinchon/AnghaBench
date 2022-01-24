#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct HLSContext {int nb_varstreams; TYPE_1__* var_streams; } ;
struct TYPE_2__ {int /*<<< orphan*/  varname; int /*<<< orphan*/  baseurl; int /*<<< orphan*/  ccgroup; int /*<<< orphan*/  language; int /*<<< orphan*/  agroup; int /*<<< orphan*/  streams; int /*<<< orphan*/  m3u8_name; int /*<<< orphan*/  old_segments; int /*<<< orphan*/  segments; int /*<<< orphan*/  vtt_m3u8_name; int /*<<< orphan*/  vtt_basename; int /*<<< orphan*/  fmp4_init_filename; int /*<<< orphan*/  base_output_dirname; int /*<<< orphan*/  basename; int /*<<< orphan*/ * vtt_avf; } ;
typedef  TYPE_1__ VariantStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct HLSContext *hls)
{
    int i = 0;
    AVFormatContext *vtt_oc = NULL;
    VariantStream *vs = NULL;

    for (i = 0; i < hls->nb_varstreams; i++) {
        vs = &hls->var_streams[i];
        vtt_oc = vs->vtt_avf;

        FUNC0(&vs->basename);
        FUNC0(&vs->base_output_dirname);
        FUNC0(&vs->fmp4_init_filename);
        if (vtt_oc) {
            FUNC0(&vs->vtt_basename);
            FUNC0(&vs->vtt_m3u8_name);
        }

        FUNC1(vs->segments);
        FUNC1(vs->old_segments);
        FUNC0(&vs->m3u8_name);
        FUNC0(&vs->streams);
        FUNC0(&vs->agroup);
        FUNC0(&vs->language);
        FUNC0(&vs->ccgroup);
        FUNC0(&vs->baseurl);
        FUNC0(&vs->varname);
    }
}