; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faxcompr.c_decode_group3_1d_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faxcompr.c_decode_group3_1d_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ccitt_vlc = common dso_local global %struct.TYPE_2__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Run overrun\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Run went out of bounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Incorrect code\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*)* @decode_group3_1d_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_group3_1d_line(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %95, %5
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ccitt_vlc, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_vlc2(i32* %17, i32 %23, i32 9, i32 2)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %13, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ult i32 %28, 64
  br i1 %29, label %30, label %64

30:                                               ; preds = %16
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp uge i32* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 @av_log(i32* %38, i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %6, align 4
  br label %99

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %96

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 @av_log(i32* %52, i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %6, align 4
  br label %99

56:                                               ; preds = %42
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %12, align 4
  br label %95

64:                                               ; preds = %16
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @show_bits(i32* %68, i32 12)
  %70 = icmp eq i32 %69, 15
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @skip_bits(i32* %72, i32 12)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @decode_uncompressed(i32* %74, i32* %75, i32* %9, i32** %10, i32* %76, i32* %12)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %6, align 4
  br label %99

82:                                               ; preds = %71
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %96

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86
  br label %93

88:                                               ; preds = %67
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = call i32 @av_log(i32* %89, i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %6, align 4
  br label %99

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %64
  br label %95

95:                                               ; preds = %94, %56
  br label %16

96:                                               ; preds = %85, %50
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %10, align 8
  store i32 0, i32* %97, align 4
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %88, %80, %51, %37
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @decode_uncompressed(i32*, i32*, i32*, i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
