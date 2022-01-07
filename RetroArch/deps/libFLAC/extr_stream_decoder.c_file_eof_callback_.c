
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* private_; } ;
struct TYPE_4__ {int file; } ;
typedef int FLAC__bool ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 scalar_t__ feof (int ) ;

FLAC__bool file_eof_callback_(const FLAC__StreamDecoder *decoder, void *client_data)
{
 (void)client_data;

 return feof(decoder->private_->file)? 1 : 0;
}
