
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodec ;


 int exit_program (int) ;

__attribute__((used)) static void abort_codec_experimental(AVCodec *c, int encoder)
{
    exit_program(1);
}
