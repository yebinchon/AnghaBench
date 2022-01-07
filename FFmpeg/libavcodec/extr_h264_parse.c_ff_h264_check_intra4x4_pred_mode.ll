; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_ff_h264_check_intra4x4_pred_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_ff_h264_check_intra4x4_pred_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_h264_check_intra4x4_pred_mode.top = internal constant [12 x i32] [i32 -1, i32 0, i32 129, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0], align 16
@ff_h264_check_intra4x4_pred_mode.left = internal constant [12 x i32] [i32 0, i32 -1, i32 128, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 130, i32 0, i32 0], align 16
@scan8 = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"top block unavailable for requested intra mode %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_h264_check_intra4x4_pred_mode.mask = internal constant [4 x i32] [i32 32768, i32 8192, i32 128, i32 32], align 16
@.str.1 = private unnamed_addr constant [55 x i8] c"left block unavailable for requested intra4x4 mode %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_check_intra4x4_pred_mode(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 32768
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %56, %16
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** @scan8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [12 x i32], [12 x i32]* @ff_h264_check_intra4x4_pred_mode.top, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @av_log(i8* %36, i32 %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %5, align 4
  br label %120

41:                                               ; preds = %20
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** @scan8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %46, i64 %52
  store i32 %45, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %41
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %17

59:                                               ; preds = %17
  br label %60

60:                                               ; preds = %59, %4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 34952
  %63 = icmp ne i32 %62, 34952
  br i1 %63, label %64, label %119

64:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %115, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %118

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* @ff_h264_check_intra4x4_pred_mode.mask, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %114, label %76

76:                                               ; preds = %68
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** @scan8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 8, %81
  %83 = add nsw i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [12 x i32], [12 x i32]* @ff_h264_check_intra4x4_pred_mode.left, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %76
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @av_log(i8* %93, i32 %94, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %5, align 4
  br label %120

98:                                               ; preds = %76
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = load i32*, i32** @scan8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 8, %107
  %109 = add nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %103, i64 %110
  store i32 %102, i32* %111, align 4
  br label %112

112:                                              ; preds = %101, %98
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %68
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %65

118:                                              ; preds = %65
  br label %119

119:                                              ; preds = %118, %60
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %92, %35
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
