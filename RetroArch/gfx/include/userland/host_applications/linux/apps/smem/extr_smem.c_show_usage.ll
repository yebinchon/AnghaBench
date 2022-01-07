; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/smem/extr_smem.c_show_usage.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/smem/extr_smem.c_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Usage: smem [OPTION]...\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"  -a, --alloc=SIZE             Allocates a block of SIZE\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"  -p, --pid=PID                Use PID for desired action\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"  -s, --status=TYPE            Queries status of TYPE [for PID]\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"                all                    all (for current pid)\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"                vc                     videocore allocations\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"                map                    host map status\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"                map <pid>              host map status for pid\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"                host <pid>             host allocations for pid\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"  -h, --help                   Print this information\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_usage() #0 {
  %1 = call i32 @vcos_log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @vcos_log_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @vcos_log_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @vcos_log_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @vcos_log_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @vcos_log_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @vcos_log_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @vcos_log_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @vcos_log_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @vcos_log_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @vcos_log_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
