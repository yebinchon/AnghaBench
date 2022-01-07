
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * file; } ;
typedef TYPE_1__ unz_s ;
typedef int * unzFile ;
typedef int FILE ;


 scalar_t__ ALLOC (int) ;
 int Com_Memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int * fopen (char const*,char*) ;

extern unzFile unzReOpen (const char* path, unzFile file)
{
 unz_s *s;
 FILE * fin;

    fin=fopen(path,"rb");
 if (fin==((void*)0))
  return ((void*)0);

 s=(unz_s*)ALLOC(sizeof(unz_s));
 Com_Memcpy(s, (unz_s*)file, sizeof(unz_s));

 s->file = fin;
 return (unzFile)s;
}
