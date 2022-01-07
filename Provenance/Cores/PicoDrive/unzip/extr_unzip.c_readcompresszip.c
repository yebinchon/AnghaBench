
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct zipent {int compressed_size; } ;
struct TYPE_4__ {int zip; int fp; } ;
typedef TYPE_1__ ZIP ;


 int ERROR_CORRUPT ;
 int errormsg (char*,int ,int ) ;
 int fread (char*,int ,int,int ) ;
 int seekcompresszip (TYPE_1__*,struct zipent*) ;

int readcompresszip(ZIP* zip, struct zipent* ent, char* data) {
 int err = seekcompresszip(zip,ent);
 if (err!=0)
  return err;

 if (fread(data, ent->compressed_size, 1, zip->fp)!=1) {
  errormsg ("Reading compressed data", ERROR_CORRUPT, zip->zip);
  return -1;
 }

 return 0;
}
