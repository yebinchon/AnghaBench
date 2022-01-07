
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Read; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef TYPE_2__ CFileSeqInStream ;


 int FileSeqInStream_Read ;

void FileSeqInStream_CreateVTable(CFileSeqInStream *p)
{
   p->s.Read = FileSeqInStream_Read;
}
