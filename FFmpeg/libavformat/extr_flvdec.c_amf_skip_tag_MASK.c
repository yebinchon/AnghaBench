#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  eof_reached; } ;
typedef  TYPE_1__ AVIOContext ;
typedef  int AMFDataType ;

/* Variables and functions */
#define  AMF_DATA_TYPE_ARRAY 135 
#define  AMF_DATA_TYPE_BOOL 134 
#define  AMF_DATA_TYPE_MIXEDARRAY 133 
#define  AMF_DATA_TYPE_NULL 132 
#define  AMF_DATA_TYPE_NUMBER 131 
#define  AMF_DATA_TYPE_OBJECT 130 
#define  AMF_DATA_TYPE_OBJECT_END 129 
#define  AMF_DATA_TYPE_STRING 128 
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC4(AVIOContext *pb, AMFDataType type)
{
    int nb = -1, ret, parse_name = 1;

    switch (type) {
    case AMF_DATA_TYPE_NUMBER:
        FUNC3(pb, 8);
        break;
    case AMF_DATA_TYPE_BOOL:
        FUNC3(pb, 1);
        break;
    case AMF_DATA_TYPE_STRING:
        FUNC3(pb, FUNC1(pb));
        break;
    case AMF_DATA_TYPE_ARRAY:
        parse_name = 0;
    case AMF_DATA_TYPE_MIXEDARRAY:
        nb = FUNC2(pb);
    case AMF_DATA_TYPE_OBJECT:
        while(!pb->eof_reached && (nb-- > 0 || type != AMF_DATA_TYPE_ARRAY)) {
            if (parse_name) {
                int size = FUNC1(pb);
                if (!size) {
                    FUNC3(pb, 1);
                    break;
                }
                FUNC3(pb, size);
            }
            if ((ret = FUNC4(pb, FUNC0(pb))) < 0)
                return ret;
        }
        break;
    case AMF_DATA_TYPE_NULL:
    case AMF_DATA_TYPE_OBJECT_END:
        break;
    default:
        return AVERROR_INVALIDDATA;
    }
    return 0;
}