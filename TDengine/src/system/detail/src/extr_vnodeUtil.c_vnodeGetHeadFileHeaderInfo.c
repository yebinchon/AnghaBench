
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVnodeHeadInfo ;


 int SEEK_SET ;
 int TSDB_FILE_HEADER_LEN ;
 int lseek (int,int,int ) ;
 int read (int,int *,int) ;

void vnodeGetHeadFileHeaderInfo(int fd, SVnodeHeadInfo* pHeadInfo) {
  lseek(fd, TSDB_FILE_HEADER_LEN / 4, SEEK_SET);
  read(fd, pHeadInfo, sizeof(SVnodeHeadInfo));
}
