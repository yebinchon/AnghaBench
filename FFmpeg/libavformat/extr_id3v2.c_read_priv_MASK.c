#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* tag; struct TYPE_7__* next; TYPE_1__* data; } ;
struct TYPE_6__ {int datasize; int /*<<< orphan*/  data; int /*<<< orphan*/  owner; } ;
typedef  TYPE_1__ ID3v2ExtraMetaPRIV ;
typedef  TYPE_2__ ID3v2ExtraMeta ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  ID3v2_ENCODING_ISO8859 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(AVFormatContext *s, AVIOContext *pb, int taglen,
                      const char *tag, ID3v2ExtraMeta **extra_meta, int isv34)
{
    ID3v2ExtraMeta *meta;
    ID3v2ExtraMetaPRIV *priv;

    meta = FUNC2(sizeof(*meta));
    priv = FUNC2(sizeof(*priv));

    if (!meta || !priv)
        goto fail;

    if (FUNC4(s, pb, ID3v2_ENCODING_ISO8859, &priv->owner, &taglen) < 0)
        goto fail;

    priv->data = FUNC1(taglen);
    if (!priv->data)
        goto fail;

    priv->datasize = taglen;

    if (FUNC3(pb, priv->data, priv->datasize) != priv->datasize)
        goto fail;

    meta->tag   = "PRIV";
    meta->data  = priv;
    meta->next  = *extra_meta;
    *extra_meta = meta;

    return;

fail:
    if (priv)
        FUNC5(priv);
    FUNC0(&meta);
}