
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AVERROR_EOF ;
 scalar_t__ avio_feof (int *) ;

__attribute__((used)) static int should_retry(AVIOContext *pb, int error_code) {
    if (error_code == AVERROR_EOF || avio_feof(pb))
        return 0;

    return 1;
}
