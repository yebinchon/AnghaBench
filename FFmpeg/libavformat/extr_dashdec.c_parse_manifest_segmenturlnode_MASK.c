#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
struct representation {int /*<<< orphan*/  n_fragments; int /*<<< orphan*/  fragments; struct fragment* init_section; } ;
struct fragment {void* url; } ;
struct TYPE_11__ {TYPE_2__* priv_data; } ;
struct TYPE_10__ {int max_url_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ DASHContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_URL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct fragment*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fragment*) ; 
 void* FUNC4 (char*) ; 
 void* FUNC5 (TYPE_1__**,int,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, struct representation *rep,
                                         xmlNodePtr fragmenturl_node,
                                         xmlNodePtr *baseurl_nodes,
                                         char *rep_id_val,
                                         char *rep_bandwidth_val)
{
    DASHContext *c = s->priv_data;
    char *initialization_val = NULL;
    char *media_val = NULL;
    char *range_val = NULL;
    int max_url_size = c ? c->max_url_size: MAX_URL_SIZE;

    if (!FUNC2(fragmenturl_node->name, (const char *)"Initialization")) {
        initialization_val = FUNC7(fragmenturl_node, "sourceURL");
        range_val = FUNC7(fragmenturl_node, "range");
        if (initialization_val || range_val) {
            rep->init_section = FUNC4(range_val);
            if (!rep->init_section) {
                FUNC6(initialization_val);
                FUNC6(range_val);
                return FUNC0(ENOMEM);
            }
            rep->init_section->url = FUNC5(baseurl_nodes, 4,
                                                     max_url_size,
                                                     rep_id_val,
                                                     rep_bandwidth_val,
                                                     initialization_val);

            if (!rep->init_section->url) {
                FUNC1(rep->init_section);
                FUNC6(initialization_val);
                FUNC6(range_val);
                return FUNC0(ENOMEM);
            }
            FUNC6(initialization_val);
            FUNC6(range_val);
        }
    } else if (!FUNC2(fragmenturl_node->name, (const char *)"SegmentURL")) {
        media_val = FUNC7(fragmenturl_node, "media");
        range_val = FUNC7(fragmenturl_node, "mediaRange");
        if (media_val || range_val) {
            struct fragment *seg = FUNC4(range_val);
            if (!seg) {
                FUNC6(media_val);
                FUNC6(range_val);
                return FUNC0(ENOMEM);
            }
            seg->url = FUNC5(baseurl_nodes, 4,
                                       max_url_size,
                                       rep_id_val,
                                       rep_bandwidth_val,
                                       media_val);
            if (!seg->url) {
                FUNC1(seg);
                FUNC6(media_val);
                FUNC6(range_val);
                return FUNC0(ENOMEM);
            }
            FUNC3(&rep->fragments, &rep->n_fragments, seg);
            FUNC6(media_val);
            FUNC6(range_val);
        }
    }

    return 0;
}