#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int64_t ;
typedef  int /*<<< orphan*/  format_tag ;
typedef  int DASHTmplId ;

/* Variables and functions */
#define  DASH_TMPL_ID_BANDWIDTH 133 
#define  DASH_TMPL_ID_ESCAPE 132 
#define  DASH_TMPL_ID_NUMBER 131 
#define  DASH_TMPL_ID_REP_ID 130 
#define  DASH_TMPL_ID_TIME 129 
#define  DASH_TMPL_ID_UNDEFINED 128 
 int FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*,char*,int,char const**) ; 
 int FUNC3 (char*,size_t,char*,int) ; 
 char* FUNC4 (char const*,char) ; 

void FUNC5(char *dst, size_t buffer_size,
                                  const char *template, int rep_id,
                                  int number, int bit_rate,
                                  int64_t time) {
    int dst_pos = 0;
    const char *t_cur = template;
    while (dst_pos < buffer_size - 1 && *t_cur) {
        char format_tag[7]; // May be "%d", "%0Xd", or "%0Xlld" (for $Time$), where X is in [0-9]
        int n = 0;
        DASHTmplId id_type;
        const char *t_next = FUNC4(t_cur, '$'); // copy over everything up to the first '$' character
        if (t_next) {
            int num_copy_bytes = FUNC0(t_next - t_cur, buffer_size - dst_pos - 1);
            FUNC1(&dst[dst_pos], t_cur, num_copy_bytes + 1);
            // advance
            dst_pos += num_copy_bytes;
            t_cur = t_next;
        } else { // no more DASH identifiers to substitute - just copy the rest over and break
            FUNC1(&dst[dst_pos], t_cur, buffer_size - dst_pos);
            break;
        }

        if (dst_pos >= buffer_size - 1 || !*t_cur)
            break;

        // t_cur is now pointing to a '$' character
        id_type = FUNC2(t_cur, format_tag, sizeof(format_tag), &t_next);
        switch (id_type) {
        case DASH_TMPL_ID_ESCAPE:
            FUNC1(&dst[dst_pos], "$", 2);
            n = 1;
            break;
        case DASH_TMPL_ID_REP_ID:
            n = FUNC3(&dst[dst_pos], buffer_size - dst_pos, format_tag, rep_id);
            break;
        case DASH_TMPL_ID_NUMBER:
            n = FUNC3(&dst[dst_pos], buffer_size - dst_pos, format_tag, number);
            break;
        case DASH_TMPL_ID_BANDWIDTH:
            n = FUNC3(&dst[dst_pos], buffer_size - dst_pos, format_tag, bit_rate);
            break;
        case DASH_TMPL_ID_TIME:
            n = FUNC3(&dst[dst_pos], buffer_size - dst_pos, format_tag, time);
            break;
        case DASH_TMPL_ID_UNDEFINED:
            // copy over one byte and advance
            FUNC1(&dst[dst_pos], t_cur, 2);
            n = 1;
            t_next = &t_cur[1];
            break;
        }
        // t_next points just past the processed identifier
        // n is the number of bytes that were attempted to be written to dst
        // (may have failed to write all because buffer_size).

        // advance
        dst_pos += FUNC0(n, buffer_size - dst_pos - 1);
        t_cur = t_next;
    }
}