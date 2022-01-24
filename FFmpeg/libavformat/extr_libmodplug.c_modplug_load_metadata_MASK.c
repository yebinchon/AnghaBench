#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  metadata; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * f; } ;
typedef  int /*<<< orphan*/  ModPlugFile ;
typedef  TYPE_1__ ModPlugContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ModPlug_InstrumentName ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ModPlug_SampleName ; 
 char* FUNC8 (char*,unsigned int,char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  instrument ; 
 int /*<<< orphan*/  sample ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s)
{
    ModPlugContext *modplug = s->priv_data;
    ModPlugFile *f = modplug->f;
    char *extra;
    const char *name = FUNC3(f);
    const char *msg  = FUNC2(f);

    unsigned n_instruments = FUNC5(f);
    unsigned n_samples     = FUNC7(f);
    unsigned n_patterns    = FUNC6(f);
    unsigned n_channels    = FUNC4(f);

    if (name && *name) FUNC9(&s->metadata, "name",    name, 0);
    if (msg  && *msg)  FUNC9(&s->metadata, "message", msg,  0);

    extra = FUNC8("%u pattern%s, %u channel%s",
                        n_patterns, n_patterns > 1 ? "s" : "",
                        n_channels, n_channels > 1 ? "s" : "");
    if (!extra)
        return FUNC1(ENOMEM);
    FUNC9(&s->metadata, "extra info", extra, AV_DICT_DONT_STRDUP_VAL);

    FUNC0(instrument, ModPlug_InstrumentName);
    FUNC0(sample,     ModPlug_SampleName);

    return 0;
}