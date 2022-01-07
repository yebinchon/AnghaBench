; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_ps.c_decode_scaling_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_ps.c_decode_scaling_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_zigzag_scan = common dso_local global i64* null, align 8
@ff_zigzag_direct = common dso_local global i64* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"delta scale %d is invalid\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, i64*, i64*)* @decode_scaling_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_scaling_list(i32* %0, i64* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 8, i32* %13, align 4
  store i32 8, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64*, i64** @ff_zigzag_scan, align 8
  br label %23

21:                                               ; preds = %5
  %22 = load i64*, i64** @ff_zigzag_direct, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64* [ %20, %19 ], [ %22, %21 ]
  store i64* %24, i64** %15, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @get_bits1(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load i64*, i64** %8, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i64* %29, i64* %30, i32 %34)
  br label %98

36:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %94, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %97

41:                                               ; preds = %37
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @get_se_golomb(i32* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, -128
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %16, align 4
  %51 = icmp sgt i32 %50, 127
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %44
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @av_log(i32* null, i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %6, align 4
  br label %99

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %58, %59
  %61 = and i32 %60, 255
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %57, %41
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load i64*, i64** %8, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i64* %69, i64* %70, i32 %74)
  br label %97

76:                                               ; preds = %65, %62
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = sext i32 %84 to i64
  %86 = load i64*, i64** %8, align 8
  %87 = load i64*, i64** %15, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %86, i64 %91
  store i64 %85, i64* %92, align 8
  %93 = trunc i64 %85 to i32
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %37

97:                                               ; preds = %68, %37
  br label %98

98:                                               ; preds = %97, %28
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %52
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @get_se_golomb(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
