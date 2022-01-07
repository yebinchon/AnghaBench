
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int FSEv05_DTable ;


 int FSEv05_DTABLE_SIZE_U32 (unsigned int) ;
 unsigned int FSEv05_TABLELOG_ABSOLUTE_MAX ;
 scalar_t__ malloc (int) ;

FSEv05_DTable* FSEv05_createDTable (unsigned tableLog)
{
    if (tableLog > FSEv05_TABLELOG_ABSOLUTE_MAX) tableLog = FSEv05_TABLELOG_ABSOLUTE_MAX;
    return (FSEv05_DTable*)malloc( FSEv05_DTABLE_SIZE_U32(tableLog) * sizeof (U32) );
}
