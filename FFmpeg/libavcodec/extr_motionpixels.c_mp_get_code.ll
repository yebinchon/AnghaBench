; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motionpixels.c_mp_get_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motionpixels.c_mp_get_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid code size %d/%d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MAX_HUFF_CODES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"too many codes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32)* @mp_get_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_get_code(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %10

10:                                               ; preds = %45, %4
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @get_bits1(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i32, i8*, ...) @av_log(i32 %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %5, align 4
  br label %79

33:                                               ; preds = %14
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @mp_get_code(%struct.TYPE_5__* %36, i32* %37, i32 %38, i32 %40)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %5, align 4
  br label %79

45:                                               ; preds = %33
  br label %10

46:                                               ; preds = %10
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAX_HUFF_CODES, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = call i32 (i32, i32, i8*, ...) @av_log(i32 %55, i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %5, align 4
  br label %79

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %60, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %75
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %69, i32* %78, align 4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %59, %52, %43, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
