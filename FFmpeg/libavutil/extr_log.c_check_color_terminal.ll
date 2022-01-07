; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_log.c_check_color_terminal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_log.c_check_color_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"AV_LOG_FORCE_COLOR\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"NO_COLOR\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"AV_LOG_FORCE_NOCOLOR\00", align 1
@use_color = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@attr_orig = common dso_local global i32 0, align 4
@background = common dso_local global i32 0, align 4
@con = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_color_terminal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_color_terminal() #0 {
  %1 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %5 = icmp ne i8* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %8 = icmp ne i8* %7, null
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %6, %3, %0
  %11 = phi i1 [ false, %3 ], [ false, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* @use_color, align 4
  ret void
}

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
