; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_statistics_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_statistics_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"host_statistics\00", align 1
@LCK_GRP_ATTR_NULL = common dso_local global i32 0, align 4
@host_statistics_lck_grp = common dso_local global i32 0, align 4
@host_statistics_lck = common dso_local global i32 0, align 4
@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@HOST_STATISTICS_TIME_WINDOW = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@host_statistics_time_window = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host_statistics_init() #0 {
  %1 = load i32, i32* @LCK_GRP_ATTR_NULL, align 4
  %2 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %1)
  store i32 %2, i32* @host_statistics_lck_grp, align 4
  %3 = load i32, i32* @host_statistics_lck_grp, align 4
  %4 = load i32, i32* @LCK_ATTR_NULL, align 4
  %5 = call i32 @lck_mtx_init(i32* @host_statistics_lck, i32 %3, i32 %4)
  %6 = load i32, i32* @HOST_STATISTICS_TIME_WINDOW, align 4
  %7 = load i32, i32* @NSEC_PER_SEC, align 4
  %8 = mul nsw i32 %6, %7
  %9 = call i32 @nanoseconds_to_absolutetime(i32 %8, i32* @host_statistics_time_window)
  ret void
}

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
