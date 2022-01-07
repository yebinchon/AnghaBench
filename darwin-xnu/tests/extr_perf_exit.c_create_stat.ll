; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_exit.c_create_stat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_exit.c_create_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"created time statistic\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"proc_threads\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"proc_wired_mem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @create_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_stat(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i64 @dt_stat_time_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @T_ASSERT_NOTNULL(i64 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @dt_stat_set_variable(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dt_stat_set_variable(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* %5, align 8
  ret i64 %17
}

declare dso_local i64 @dt_stat_time_create(i8*) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i64, i8*) #1

declare dso_local i32 @dt_stat_set_variable(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
