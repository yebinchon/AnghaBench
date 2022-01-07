
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;


 int AVERROR (int ) ;

 int ENOSYS ;
 int xv_repaint (int *) ;

__attribute__((used)) static int xv_control_message(AVFormatContext *s, int type, void *data, size_t data_size)
{
    switch(type) {
    case 128:
        return xv_repaint(s);
    default:
        break;
    }
    return AVERROR(ENOSYS);
}
