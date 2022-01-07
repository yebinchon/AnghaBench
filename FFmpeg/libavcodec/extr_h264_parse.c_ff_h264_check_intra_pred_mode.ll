; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_ff_h264_check_intra_pred_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_ff_h264_check_intra_pred_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_h264_check_intra_pred_mode.top = internal constant [4 x i32] [i32 129, i32 1, i32 -1, i32 -1], align 16
@ff_h264_check_intra_pred_mode.left = internal constant [5 x i32] [i32 128, i32 -1, i32 2, i32 -1, i32 130], align 16
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"out of range intra chroma pred mode\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"top block unavailable for requested intra mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"left block unavailable for requested intra mode\0A\00", align 1
@ALZHEIMER_DC_L0T_PRED8x8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_check_intra_pred_mode(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = call i32 @av_log(i8* %15, i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %18, i32* %6, align 4
  br label %75

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 32768
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* @ff_h264_check_intra_pred_mode.top, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = call i32 @av_log(i8* %31, i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %34, i32* %6, align 4
  br label %75

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 32896
  %39 = icmp ne i32 %38, 32896
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* @ff_h264_check_intra_pred_mode.left, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 @av_log(i8* %48, i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %6, align 4
  br label %75

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 32896
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, i32* @ALZHEIMER_DC_L0T_PRED8x8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 32768
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %60, %65
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 130
  %69 = zext i1 %68 to i32
  %70 = mul nsw i32 2, %69
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %59, %55, %52
  br label %73

73:                                               ; preds = %72, %36
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %47, %30, %14
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @av_log(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
