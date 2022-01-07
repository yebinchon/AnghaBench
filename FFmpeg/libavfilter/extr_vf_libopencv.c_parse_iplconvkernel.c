
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IplConvKernel ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int CV_SHAPE_CROSS ;
 int CV_SHAPE_CUSTOM ;
 int CV_SHAPE_ELLIPSE ;
 int CV_SHAPE_RECT ;
 int EINVAL ;
 int ENOMEM ;
 int av_freep (int**) ;
 int av_log (void*,int ,char*,...) ;
 int * cvCreateStructuringElementEx (int,int,int,int,int,int*) ;
 int read_shape_from_file (int*,int*,int**,char*,void*) ;
 int sscanf (char*,char*,int*,int*,int*,int*,char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int parse_iplconvkernel(IplConvKernel **kernel, char *buf, void *log_ctx)
{
    char shape_filename[128] = "", shape_str[32] = "rect";
    int cols = 0, rows = 0, anchor_x = 0, anchor_y = 0, shape = CV_SHAPE_RECT;
    int *values = ((void*)0), ret = 0;

    sscanf(buf, "%dx%d+%dx%d/%32[^=]=%127s", &cols, &rows, &anchor_x, &anchor_y, shape_str, shape_filename);

    if (!strcmp(shape_str, "rect" )) shape = CV_SHAPE_RECT;
    else if (!strcmp(shape_str, "cross" )) shape = CV_SHAPE_CROSS;
    else if (!strcmp(shape_str, "ellipse")) shape = CV_SHAPE_ELLIPSE;
    else if (!strcmp(shape_str, "custom" )) {
        shape = CV_SHAPE_CUSTOM;
        if ((ret = read_shape_from_file(&cols, &rows, &values, shape_filename, log_ctx)) < 0)
            return ret;
    } else {
        av_log(log_ctx, AV_LOG_ERROR,
               "Shape unspecified or type '%s' unknown.\n", shape_str);
        ret = AVERROR(EINVAL);
        goto out;
    }

    if (rows <= 0 || cols <= 0) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Invalid non-positive values for shape size %dx%d\n", cols, rows);
        ret = AVERROR(EINVAL);
        goto out;
    }

    if (anchor_x < 0 || anchor_y < 0 || anchor_x >= cols || anchor_y >= rows) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Shape anchor %dx%d is not inside the rectangle with size %dx%d.\n",
               anchor_x, anchor_y, cols, rows);
        ret = AVERROR(EINVAL);
        goto out;
    }

    *kernel = cvCreateStructuringElementEx(cols, rows, anchor_x, anchor_y, shape, values);
    if (!*kernel) {
        ret = AVERROR(ENOMEM);
        goto out;
    }

    av_log(log_ctx, AV_LOG_VERBOSE, "Structuring element: w:%d h:%d x:%d y:%d shape:%s\n",
           rows, cols, anchor_x, anchor_y, shape_str);
out:
    av_freep(&values);
    return ret;
}
