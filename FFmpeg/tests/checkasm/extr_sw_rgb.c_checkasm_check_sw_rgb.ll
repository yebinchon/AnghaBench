; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_sw_rgb.c_checkasm_check_sw_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_sw_rgb.c_checkasm_check_sw_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shuffle_bytes_2103 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"shuffle_bytes_2103\00", align 1
@shuffle_bytes_0321 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"shuffle_bytes_0321\00", align 1
@shuffle_bytes_1230 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"shuffle_bytes_1230\00", align 1
@shuffle_bytes_3012 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"shuffle_bytes_3012\00", align 1
@shuffle_bytes_3210 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"shuffle_bytes_3210\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"uyvytoyuv422\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkasm_check_sw_rgb() #0 {
  %1 = call i32 (...) @ff_sws_rgb2rgb_init()
  %2 = load i32, i32* @shuffle_bytes_2103, align 4
  %3 = call i32 @check_shuffle_bytes(i32 %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @shuffle_bytes_0321, align 4
  %6 = call i32 @check_shuffle_bytes(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @shuffle_bytes_1230, align 4
  %9 = call i32 @check_shuffle_bytes(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @shuffle_bytes_3012, align 4
  %12 = call i32 @check_shuffle_bytes(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @shuffle_bytes_3210, align 4
  %15 = call i32 @check_shuffle_bytes(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 (...) @check_uyvy_to_422p()
  %18 = call i32 @report(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ff_sws_rgb2rgb_init(...) #1

declare dso_local i32 @check_shuffle_bytes(i32, i8*) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @check_uyvy_to_422p(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
