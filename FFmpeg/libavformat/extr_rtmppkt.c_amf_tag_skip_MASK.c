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
typedef  int AMFDataType ;

/* Variables and functions */
#define  AMF_DATA_TYPE_ARRAY 137 
#define  AMF_DATA_TYPE_BOOL 136 
#define  AMF_DATA_TYPE_DATE 135 
#define  AMF_DATA_TYPE_LONG_STRING 134 
#define  AMF_DATA_TYPE_MIXEDARRAY 133 
#define  AMF_DATA_TYPE_NULL 132 
#define  AMF_DATA_TYPE_NUMBER 131 
#define  AMF_DATA_TYPE_OBJECT 130 
#define  AMF_DATA_TYPE_OBJECT_END 129 
#define  AMF_DATA_TYPE_STRING 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(GetByteContext *gb)
{
    AMFDataType type;
    unsigned nb   = -1;
    int parse_key = 1;

    if (FUNC4(gb) < 1)
        return -1;

    type = FUNC3(gb);
    switch (type) {
    case AMF_DATA_TYPE_NUMBER:
        FUNC2(gb);
        return 0;
    case AMF_DATA_TYPE_BOOL:
        FUNC3(gb);
        return 0;
    case AMF_DATA_TYPE_STRING:
        FUNC5(gb, FUNC0(gb));
        return 0;
    case AMF_DATA_TYPE_LONG_STRING:
        FUNC5(gb, FUNC1(gb));
        return 0;
    case AMF_DATA_TYPE_NULL:
        return 0;
    case AMF_DATA_TYPE_DATE:
        FUNC5(gb, 10);
        return 0;
    case AMF_DATA_TYPE_ARRAY:
        parse_key = 0;
    case AMF_DATA_TYPE_MIXEDARRAY:
        nb = FUNC1(gb);
    case AMF_DATA_TYPE_OBJECT:
        while (nb-- > 0 || type != AMF_DATA_TYPE_ARRAY) {
            int t;
            if (parse_key) {
                int size = FUNC0(gb);
                if (!size) {
                    FUNC3(gb);
                    break;
                }
                if (size < 0 || size >= FUNC4(gb))
                    return -1;
                FUNC5(gb, size);
            }
            t = FUNC6(gb);
            if (t < 0 || FUNC4(gb) <= 0)
                return -1;
        }
        return 0;
    case AMF_DATA_TYPE_OBJECT_END:  return 0;
    default:                        return -1;
    }
}