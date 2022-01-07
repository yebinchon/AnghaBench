
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ number_entry; scalar_t__ size_comment; } ;
struct TYPE_4__ {scalar_t__ size_central_dir; scalar_t__ offset_central_dir; int * pfile_in_zip_read; scalar_t__ central_pos; scalar_t__ byte_before_the_zipfile; int * file; TYPE_1__ gi; } ;
typedef TYPE_2__ unz_s ;
typedef int * unzFile ;
typedef scalar_t__ uLong ;
typedef int FILE ;


 scalar_t__ ALLOC (int) ;
 int SEEK_SET ;
 int UNZ_BADZIPFILE ;
 int UNZ_ERRNO ;
 int UNZ_OK ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fseek (int *,scalar_t__,int ) ;
 scalar_t__ unzlocal_SearchCentralDir (int *) ;
 int unzlocal_getLong (int *,scalar_t__*) ;
 int unzlocal_getShort (int *,scalar_t__*) ;

extern unzFile unzOpen (const char* path)
{
 unz_s us;
 unz_s *s;
 uLong central_pos,uL;
 FILE * fin ;

 uLong number_disk;

 uLong number_disk_with_CD;

 uLong number_entry_CD;



 int err=UNZ_OK;

    fin=fopen(path,"rb");
 if (fin==((void*)0))
  return ((void*)0);

 central_pos = unzlocal_SearchCentralDir(fin);
 if (central_pos==0)
  err=UNZ_ERRNO;

 if (fseek(fin,central_pos,SEEK_SET)!=0)
  err=UNZ_ERRNO;


 if (unzlocal_getLong(fin,&uL)!=UNZ_OK)
  err=UNZ_ERRNO;


 if (unzlocal_getShort(fin,&number_disk)!=UNZ_OK)
  err=UNZ_ERRNO;


 if (unzlocal_getShort(fin,&number_disk_with_CD)!=UNZ_OK)
  err=UNZ_ERRNO;


 if (unzlocal_getShort(fin,&us.gi.number_entry)!=UNZ_OK)
  err=UNZ_ERRNO;


 if (unzlocal_getShort(fin,&number_entry_CD)!=UNZ_OK)
  err=UNZ_ERRNO;

 if ((number_entry_CD!=us.gi.number_entry) ||
  (number_disk_with_CD!=0) ||
  (number_disk!=0))
  err=UNZ_BADZIPFILE;


 if (unzlocal_getLong(fin,&us.size_central_dir)!=UNZ_OK)
  err=UNZ_ERRNO;



 if (unzlocal_getLong(fin,&us.offset_central_dir)!=UNZ_OK)
  err=UNZ_ERRNO;


 if (unzlocal_getShort(fin,&us.gi.size_comment)!=UNZ_OK)
  err=UNZ_ERRNO;

 if ((central_pos<us.offset_central_dir+us.size_central_dir) &&
  (err==UNZ_OK))
  err=UNZ_BADZIPFILE;

 if (err!=UNZ_OK)
 {
  fclose(fin);
  return ((void*)0);
 }

 us.file=fin;
 us.byte_before_the_zipfile = central_pos -
                      (us.offset_central_dir+us.size_central_dir);
 us.central_pos = central_pos;
    us.pfile_in_zip_read = ((void*)0);


 s=(unz_s*)ALLOC(sizeof(unz_s));
 *s=us;

 return (unzFile)s;
}
