
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VIDEOHDR ;
typedef int AVFormatContext ;


 int AV_LOG_DEBUG ;
 int av_log (int *,int ,char*) ;
 int dstruct (int *,int *,int ,char*) ;
 int dwBufferLength ;
 int dwBytesUsed ;
 int dwFlags ;
 int * dwReserved ;
 int dwTimeCaptured ;
 int dwUser ;
 int lpData ;

__attribute__((used)) static void dump_videohdr(AVFormatContext *s, VIDEOHDR *vhdr)
{
}
