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
struct TYPE_2__ {int major; } ;
typedef  scalar_t__ GLint ;

/* Variables and functions */
 TYPE_1__ GLVersion ; 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_NUM_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int FUNC6(const char *ext) {
#if defined(GL_VERSION_3_0) || defined(GL_ES_VERSION_3_0)
    if(GLVersion.major < 3 || glGetStringi == NULL) {
#endif
        const char *extensions;
        const char *loc;
        const char *terminator;
        extensions = (const char*) FUNC1(GL_EXTENSIONS);
        if(extensions == NULL || ext == NULL) {
            return 0;
        }

        while(1) {
            loc = FUNC5(extensions, ext);
            if(loc == NULL) {
                return 0;
            }

            terminator = loc + FUNC4(ext);
            if((loc == extensions || *(loc - 1) == ' ') &&
                (*terminator == ' ' || *terminator == '\0')) {
                return 1;
            }
            extensions = terminator;
        }
#if defined(GL_VERSION_3_0) || defined(GL_ES_VERSION_3_0)
    } else {
        GLint num_exts, index;

        glGetIntegerv(GL_NUM_EXTENSIONS, &num_exts);
        for(index = 0; index < num_exts; index++) {
            if(strcmp((const char*) glGetStringi(GL_EXTENSIONS, index), ext) == 0) {
                return 1;
            }
        }
    }
#endif

    return 0;
}