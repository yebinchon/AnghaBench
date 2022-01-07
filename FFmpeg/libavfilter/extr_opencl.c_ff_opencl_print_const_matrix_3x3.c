
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int av_bprintf (int *,char*,...) ;

void ff_opencl_print_const_matrix_3x3(AVBPrint *buf, const char *name_str,
                                      double mat[3][3])
{
    int i, j;
    av_bprintf(buf, "__constant float %s[9] = {\n", name_str);
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++)
            av_bprintf(buf, " %.5ff,", mat[i][j]);
        av_bprintf(buf, "\n");
    }
    av_bprintf(buf, "};\n");
}
