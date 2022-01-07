
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FTPContext ;
typedef int AVBPrint ;


 int AV_BPRINT_SIZE_AUTOMATIC ;
 int AV_LOG_DEBUG ;
 int CONTROL_BUFFER_SIZE ;
 int av_bprint_finalize (int *,char**) ;
 int av_bprint_init (int *,int ,int ) ;
 int av_bprintf (int *,char*,char*) ;
 int av_log (int *,int ,char*,char*) ;
 int ftp_get_line (int *,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int ftp_status(FTPContext *s, char **line, const int response_codes[])
{
    int err, i, dash = 0, result = 0, code_found = 0, linesize;
    char buf[CONTROL_BUFFER_SIZE];
    AVBPrint line_buffer;

    if (line)
        av_bprint_init(&line_buffer, 0, AV_BPRINT_SIZE_AUTOMATIC);

    while (!code_found || dash) {
        if ((err = ftp_get_line(s, buf, sizeof(buf))) < 0) {
            if (line)
                av_bprint_finalize(&line_buffer, ((void*)0));
            return err;
        }

        av_log(s, AV_LOG_DEBUG, "%s\n", buf);

        linesize = strlen(buf);
        err = 0;
        if (linesize >= 3) {
            for (i = 0; i < 3; ++i) {
                if (buf[i] < '0' || buf[i] > '9') {
                    err = 0;
                    break;
                }
                err *= 10;
                err += buf[i] - '0';
            }
        }

        if (!code_found) {
            if (err >= 500) {
                code_found = 1;
                result = err;
            } else
                for (i = 0; response_codes[i]; ++i) {
                    if (err == response_codes[i]) {
                        code_found = 1;
                        result = err;
                        break;
                    }
                }
        }
        if (code_found) {
            if (line)
                av_bprintf(&line_buffer, "%s\r\n", buf);
            if (linesize >= 4) {
                if (!dash && buf[3] == '-')
                    dash = err;
                else if (err == dash && buf[3] == ' ')
                    dash = 0;
            }
        }
    }

    if (line)
        av_bprint_finalize(&line_buffer, line);
    return result;
}
