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
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  TIFF_BYTE 138 
#define  TIFF_DOUBLE 137 
#define  TIFF_LONG 136 
#define  TIFF_RATIONAL 135 
#define  TIFF_SBYTE 134 
#define  TIFF_SHORT 133 
#define  TIFF_SLONG 132 
#define  TIFF_SRATIONAL 131 
#define  TIFF_SSHORT 130 
#define  TIFF_STRING 129 
#define  TIFF_UNDEFINED 128 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,int) ; 
 int FUNC2 (int,char const*,char const*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 int FUNC3 (int,char const*,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC4 (int,char const*,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC5 (int,char const*,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC6 (int,char const*,char const*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 int FUNC7 (int,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC8(void *logctx, int count, int type,
                             const char *name, const char *sep,
                             GetByteContext *gb, int le,
                             AVDictionary **metadata)
{
    switch(type) {
    case 0:
        FUNC0(logctx, AV_LOG_WARNING,
               "Invalid TIFF tag type 0 found for %s with size %d\n",
               name, count);
        return 0;
    case TIFF_DOUBLE   : return FUNC3(count, name, sep, gb, le, metadata);
    case TIFF_SSHORT   : return FUNC6(count, name, sep, gb, le, 1, metadata);
    case TIFF_SHORT    : return FUNC6(count, name, sep, gb, le, 0, metadata);
    case TIFF_SBYTE    : return FUNC2(count, name, sep, gb, le, 1, metadata);
    case TIFF_BYTE     :
    case TIFF_UNDEFINED: return FUNC2(count, name, sep, gb, le, 0, metadata);
    case TIFF_STRING   : return FUNC7(count, name, gb, le, metadata);
    case TIFF_SRATIONAL:
    case TIFF_RATIONAL : return FUNC5(count, name, sep, gb, le, metadata);
    case TIFF_SLONG    :
    case TIFF_LONG     : return FUNC4(count, name, sep, gb, le, metadata);
    default:
        FUNC1(logctx, "TIFF tag type (%u)", type);
        return 0;
    };
}