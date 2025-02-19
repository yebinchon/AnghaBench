; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_check_n_master.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_check_n_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid n_master: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Invalid bitstream, crossover band index beyond array bounds: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @check_n_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_n_master(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @AV_LOG_ERROR, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @av_log(i32* %11, i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %4, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @av_log(i32* %20, i32 %21, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %4, align 4
  br label %25

24:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %19, %10
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
