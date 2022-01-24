#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double d; long long i; } ;
struct unit_value {scalar_t__ unit; TYPE_1__ val; } ;
struct TYPE_5__ {double bin_val; char* bin_str; double dec_val; char* dec_str; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 long long FUNC1 (long long,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char const*,char*) ; 
 scalar_t__ FUNC3 (double) ; 
 scalar_t__ FUNC4 (double) ; 
 scalar_t__ show_value_unit ; 
 TYPE_2__* si_prefixes ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,long long,...) ; 
 scalar_t__ unit_byte_str ; 
 scalar_t__ unit_second_str ; 
 scalar_t__ use_byte_value_binary_prefix ; 
 scalar_t__ use_value_prefix ; 
 scalar_t__ use_value_sexagesimal_format ; 

__attribute__((used)) static char *FUNC6(char *buf, int buf_size, struct unit_value uv)
{
    double vald;
    long long int vali;
    int show_float = 0;

    if (uv.unit == unit_second_str) {
        vald = uv.val.d;
        show_float = 1;
    } else {
        vald = vali = uv.val.i;
    }

    if (uv.unit == unit_second_str && use_value_sexagesimal_format) {
        double secs;
        int hours, mins;
        secs  = vald;
        mins  = (int)secs / 60;
        secs  = secs - mins * 60;
        hours = mins / 60;
        mins %= 60;
        FUNC5(buf, buf_size, "%d:%02d:%09.6f", hours, mins, secs);
    } else {
        const char *prefix_string = "";

        if (use_value_prefix && vald > 1) {
            long long int index;

            if (uv.unit == unit_byte_str && use_byte_value_binary_prefix) {
                index = (long long int) (FUNC4(vald)) / 10;
                index = FUNC1(index, 0, FUNC0(si_prefixes) - 1);
                vald /= si_prefixes[index].bin_val;
                prefix_string = si_prefixes[index].bin_str;
            } else {
                index = (long long int) (FUNC3(vald)) / 3;
                index = FUNC1(index, 0, FUNC0(si_prefixes) - 1);
                vald /= si_prefixes[index].dec_val;
                prefix_string = si_prefixes[index].dec_str;
            }
            vali = vald;
        }

        if (show_float || (use_value_prefix && vald != (long long int)vald))
            FUNC5(buf, buf_size, "%f", vald);
        else
            FUNC5(buf, buf_size, "%lld", vali);
        FUNC2(buf, buf_size, "%s%s%s", *prefix_string || show_value_unit ? " " : "",
                 prefix_string, show_value_unit ? uv.unit : "");
    }

    return buf;
}