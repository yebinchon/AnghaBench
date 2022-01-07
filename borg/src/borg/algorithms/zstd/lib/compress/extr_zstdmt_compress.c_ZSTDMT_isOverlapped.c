
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; scalar_t__ start; } ;
typedef TYPE_1__ range_t ;
struct TYPE_6__ {int capacity; scalar_t__ start; } ;
typedef TYPE_2__ buffer_t ;
typedef int BYTE ;



__attribute__((used)) static int ZSTDMT_isOverlapped(buffer_t buffer, range_t range)
{
    BYTE const* const bufferStart = (BYTE const*)buffer.start;
    BYTE const* const bufferEnd = bufferStart + buffer.capacity;
    BYTE const* const rangeStart = (BYTE const*)range.start;
    BYTE const* const rangeEnd = rangeStart + range.size;

    if (rangeStart == ((void*)0) || bufferStart == ((void*)0))
        return 0;

    if (bufferStart == bufferEnd || rangeStart == rangeEnd)
        return 0;

    return bufferStart < rangeEnd && rangeStart < bufferEnd;
}
