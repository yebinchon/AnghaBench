; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dxtory_decode_v1_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dxtory_decode_v1_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32, i32, i32)* @dxtory_decode_v1_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxtory_decode_v1_rgb(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load i32, i32* %13, align 4
  %26 = mul nsw i32 %24, %25
  %27 = icmp slt i32 %17, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = load i32, i32* @AV_LOG_ERROR, align 4
  %31 = call i32 @av_log(%struct.TYPE_9__* %29, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %7, align 4
  br label %84

33:                                               ; preds = %6
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = call i32 @ff_get_buffer(%struct.TYPE_9__* %37, %struct.TYPE_8__* %38, i32 0)
  store i32 %39, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %7, align 4
  br label %84

43:                                               ; preds = %33
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %80, %43
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i32 @memcpy(i32* %56, i32* %57, i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32*, i32** %10, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %10, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %15, align 8
  br label %80

80:                                               ; preds = %55
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %49

83:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %41, %28
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
