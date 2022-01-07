
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; scalar_t__ start; } ;
typedef TYPE_1__ range_t ;
typedef int buffer_t ;
struct TYPE_6__ {scalar_t__ dictLimit; scalar_t__ base; scalar_t__ nextSrc; scalar_t__ lowLimit; scalar_t__ dictBase; } ;
typedef TYPE_2__ ZSTD_window_t ;


 int DEBUGLOG (int,char*,...) ;
 scalar_t__ ZSTDMT_isOverlapped (int ,TYPE_1__) ;

__attribute__((used)) static int ZSTDMT_doesOverlapWindow(buffer_t buffer, ZSTD_window_t window)
{
    range_t extDict;
    range_t prefix;

    DEBUGLOG(5, "ZSTDMT_doesOverlapWindow");
    extDict.start = window.dictBase + window.lowLimit;
    extDict.size = window.dictLimit - window.lowLimit;

    prefix.start = window.base + window.dictLimit;
    prefix.size = window.nextSrc - (window.base + window.dictLimit);
    DEBUGLOG(5, "extDict [0x%zx, 0x%zx)",
                (size_t)extDict.start,
                (size_t)extDict.start + extDict.size);
    DEBUGLOG(5, "prefix  [0x%zx, 0x%zx)",
                (size_t)prefix.start,
                (size_t)prefix.start + prefix.size);

    return ZSTDMT_isOverlapped(buffer, extDict)
        || ZSTDMT_isOverlapped(buffer, prefix);
}
