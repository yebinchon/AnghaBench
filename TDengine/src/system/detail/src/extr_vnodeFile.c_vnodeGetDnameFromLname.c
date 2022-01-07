
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSDB_FILENAME_LEN ;
 int assert (int ) ;
 int readlink (char*,char*,int ) ;

void vnodeGetDnameFromLname(char *lhead, char *ldata, char *llast, char *dhead, char *ddata, char *dlast) {
  if (lhead != ((void*)0)) {
    assert(dhead != ((void*)0));
    readlink(lhead, dhead, TSDB_FILENAME_LEN);
  }

  if (ldata != ((void*)0)) {
    assert(ddata != ((void*)0));
    readlink(ldata, ddata, TSDB_FILENAME_LEN);
  }

  if (llast != ((void*)0)) {
    assert(dlast != ((void*)0));
    readlink(llast, dlast, TSDB_FILENAME_LEN);
  }
}
