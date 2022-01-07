
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Seek; int Read; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef TYPE_2__ CFileInStream ;


 int FileInStream_Read ;
 int FileInStream_Seek ;

void FileInStream_CreateVTable(CFileInStream *p)
{
   p->s.Read = FileInStream_Read;
   p->s.Seek = FileInStream_Seek;
}
