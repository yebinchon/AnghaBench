; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mpdecimate.c_diff_planes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mpdecimate.c_diff_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 (i32*, i32, i32*, i32)*, i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%d>=hi \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"lo:%d>=%d \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"lo:%d<%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32, i32)* @diff_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_planes(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %16, align 8
  store i32 0, i32* %20, align 4
  %25 = load i32, i32* %14, align 4
  %26 = sdiv i32 %25, 16
  %27 = load i32, i32* %15, align 4
  %28 = sdiv i32 %27, 16
  %29 = mul nsw i32 %26, %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %104, %7
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %15, align 4
  %37 = sub nsw i32 %36, 7
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %107

39:                                               ; preds = %34
  store i32 8, i32* %17, align 4
  br label %40

40:                                               ; preds = %100, %39
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %42, 7
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32 (i32*, i32, i32*, i32)*, i32 (i32*, i32, i32*, i32)** %47, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %13, align 4
  %69 = call i32 %48(i32* %57, i32 %58, i32* %67, i32 %68)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %45
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = load i32, i32* @AV_LOG_DEBUG, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call i32 (%struct.TYPE_6__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_6__* %76, i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 1, i32* %8, align 4
  br label %113

80:                                               ; preds = %45
  %81 = load i32, i32* %19, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i32, i32* %20, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %21, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %94 = load i32, i32* @AV_LOG_DEBUG, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = call i32 (%struct.TYPE_6__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_6__* %93, i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  store i32 1, i32* %8, align 4
  br label %113

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %80
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 4
  store i32 %102, i32* %17, align 4
  br label %40

103:                                              ; preds = %40
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 4
  store i32 %106, i32* %18, align 4
  br label %34

107:                                              ; preds = %34
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %109 = load i32, i32* @AV_LOG_DEBUG, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %21, align 4
  %112 = call i32 (%struct.TYPE_6__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_6__* %108, i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111)
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %107, %92, %75
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
