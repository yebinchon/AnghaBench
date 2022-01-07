; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_rematrix.c_clean_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_rematrix.c_clean_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CH_FRONT_CENTER = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Treating %s as mono\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @clean_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_layout(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @av_get_channel_layout_string(i8* %20, i32 128, i32 -1, i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %26 = call i32 @av_log(i8* %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %13, %9, %2
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @av_get_channel_layout_string(i8*, i32, i32, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
