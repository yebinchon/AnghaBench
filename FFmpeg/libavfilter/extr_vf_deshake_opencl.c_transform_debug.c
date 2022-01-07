
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 int AV_LOG_VERBOSE ;
 double M_PI ;
 size_t RingbufRot ;
 size_t RingbufScaleX ;
 size_t RingbufScaleY ;
 size_t RingbufX ;
 size_t RingbufY ;
 int av_log (int *,int ,char*,int,float,float,float,float,float,float,float,float,float,float,float,float,float,float,float) ;

__attribute__((used)) static void transform_debug(AVFilterContext *avctx, float *new_vals, float *old_vals, int curr_frame) {
    av_log(avctx, AV_LOG_VERBOSE,
        "Frame %d:\n"
        "\tframe moved from: %f x, %f y\n"
        "\t              to: %f x, %f y\n"
        "\t    rotated from: %f degrees\n"
        "\t              to: %f degrees\n"
        "\t     scaled from: %f x, %f y\n"
        "\t              to: %f x, %f y\n"
        "\n"
        "\tframe moved by: %f x, %f y\n"
        "\t    rotated by: %f degrees\n"
        "\t     scaled by: %f x, %f y\n",
        curr_frame,
        old_vals[RingbufX], old_vals[RingbufY],
        new_vals[RingbufX], new_vals[RingbufY],
        old_vals[RingbufRot] * (180.0 / M_PI),
        new_vals[RingbufRot] * (180.0 / M_PI),
        old_vals[RingbufScaleX], old_vals[RingbufScaleY],
        new_vals[RingbufScaleX], new_vals[RingbufScaleY],
        old_vals[RingbufX] - new_vals[RingbufX], old_vals[RingbufY] - new_vals[RingbufY],
        old_vals[RingbufRot] * (180.0 / M_PI) - new_vals[RingbufRot] * (180.0 / M_PI),
        new_vals[RingbufScaleX] / old_vals[RingbufScaleX], new_vals[RingbufScaleY] / old_vals[RingbufScaleY]
    );
}
