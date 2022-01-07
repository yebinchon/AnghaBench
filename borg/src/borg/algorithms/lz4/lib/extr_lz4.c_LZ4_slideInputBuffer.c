
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uptrval ;
struct TYPE_3__ {scalar_t__ dictionary; } ;
struct TYPE_4__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_2__ LZ4_stream_t ;



char* LZ4_slideInputBuffer (void* state)
{

    return (char *)(uptrval)((LZ4_stream_t*)state)->internal_donotuse.dictionary;
}
