#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum AVChromaLocation { ____Placeholder_AVChromaLocation } AVChromaLocation ;
typedef  int /*<<< orphan*/  WriterContext ;

/* Variables and functions */
 int AVCHROMA_LOC_UNSPECIFIED ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(WriterContext *w, enum AVChromaLocation chroma_location)
{
    const char *val = FUNC0(chroma_location);
    if (!val || chroma_location == AVCHROMA_LOC_UNSPECIFIED) {
        FUNC2("chroma_location", "unspecified");
    } else {
        FUNC1("chroma_location", val);
    }
}