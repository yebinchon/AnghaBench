; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_dequantize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_dequantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@QROOT = common dso_local global i32 0, align 4
@ff_qexp = common dso_local global i32* null, align 8
@QSHIFT = common dso_local global i32 0, align 4
@QBIAS_SHIFT = common dso_local global i32 0, align 4
@LOSSLESS_QLOG = common dso_local global i32 0, align 4
@QEXPSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32)* @dequantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequantize(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load i32, i32* @QROOT, align 4
  %31 = mul nsw i32 %30, 16
  %32 = call i32 @av_clip(i32 %29, i32 0, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** @ff_qexp, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @QROOT, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @QSHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = shl i32 %40, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* @QBIAS_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LOSSLESS_QLOG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %4
  br label %126

58:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %123, %58
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %126

63:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %119, %63
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %122

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %68
  %81 = load i32, i32* %16, align 4
  %82 = sub nsw i32 0, %81
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @QEXPSHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = sub nsw i32 0, %88
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  store i32 %89, i32* %97, align 4
  br label %118

98:                                               ; preds = %68
  %99 = load i32, i32* %16, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %12, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* @QEXPSHIFT, align 4
  %108 = ashr i32 %106, %107
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %8, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %109, i64 %115
  store i32 %108, i32* %116, align 4
  br label %117

117:                                              ; preds = %101, %98
  br label %118

118:                                              ; preds = %117, %80
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %64

122:                                              ; preds = %64
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %59

126:                                              ; preds = %57, %59
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
