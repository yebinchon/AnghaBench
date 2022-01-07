
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int write_out_ptr; int out_buffer; int mms_hd; } ;
struct TYPE_4__ {TYPE_2__ mms; } ;
typedef TYPE_1__ MMSTContext ;
typedef TYPE_2__ MMSContext ;


 int AVERROR (int ) ;
 int AVUNERROR (int) ;
 int AV_LOG_ERROR ;
 int AV_WL32 (int,int) ;
 int EIO ;
 int FFALIGN (int,int) ;
 int av_log (int ,int ,char*,int,int,char*) ;
 int ffurl_write (int ,int,int) ;
 int memset (int,int ,int) ;
 char* strerror (int ) ;

__attribute__((used)) static int send_command_packet(MMSTContext *mmst)
{
    MMSContext *mms = &mmst->mms;
    int len= mms->write_out_ptr - mms->out_buffer;
    int exact_length = FFALIGN(len, 8);
    int first_length= exact_length - 16;
    int len8= first_length/8;
    int write_result;


    AV_WL32(mms->out_buffer + 8, first_length);
    AV_WL32(mms->out_buffer + 16, len8);
    AV_WL32(mms->out_buffer + 32, len8-2);
    memset(mms->write_out_ptr, 0, exact_length - len);


    write_result= ffurl_write(mms->mms_hd, mms->out_buffer, exact_length);
    if(write_result != exact_length) {
        av_log(mms->mms_hd, AV_LOG_ERROR,
               "Failed to write data of length %d: %d (%s)\n",
               exact_length, write_result,
               write_result < 0 ? strerror(AVUNERROR(write_result)) :
                   "The server closed the connection");
        return AVERROR(EIO);
    }

    return 0;
}
