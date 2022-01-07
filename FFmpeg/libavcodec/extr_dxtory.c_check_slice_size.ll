; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_check_slice_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_check_slice_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"invalid slice size %d (only %d bytes left)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid slice size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Slice sizes mismatch: got %d instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @check_slice_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_slice_size(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %11, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %19, i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %6, align 4
  br label %54

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 16
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %31, i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %6, align 4
  br label %54

36:                                               ; preds = %27
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @AV_RL32(i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 16
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 16
  %52 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %47, i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %46, %36
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %30, %18
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @AV_RL32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
