; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowdec.c_dequantize_slice_buffered.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowdec.c_dequantize_slice_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }

@QROOT = common dso_local global i32 0, align 4
@ff_qexp = common dso_local global i32* null, align 8
@QSHIFT = common dso_local global i32 0, align 4
@QBIAS_SHIFT = common dso_local global i32 0, align 4
@LOSSLESS_QLOG = common dso_local global i32 0, align 4
@QEXPSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, %struct.TYPE_5__*, i32*, i32, i32, i32)* @dequantize_slice_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequantize_slice_buffered(%struct.TYPE_6__* %0, i32* %1, %struct.TYPE_5__* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  %33 = load i32, i32* @QROOT, align 4
  %34 = mul nsw i32 %33, 16
  %35 = call i32 @av_clip(i32 %32, i32 0, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32*, i32** @ff_qexp, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @QROOT, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @QSHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = shl i32 %43, %46
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %17, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* @QBIAS_SHIFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %18, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LOSSLESS_QLOG, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %7
  br label %135

61:                                               ; preds = %7
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %132, %61
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %135

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %20, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = call i32* @slice_buffer_get_line(i32* %68, i64 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  store i32* %84, i32** %21, align 8
  store i32 0, i32* %19, align 4
  br label %85

85:                                               ; preds = %128, %67
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %85
  %90 = load i32*, i32** %21, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  %98 = load i32, i32* %22, align 4
  %99 = sub nsw i32 0, %98
  %100 = load i32, i32* %17, align 4
  %101 = mul i32 %99, %100
  %102 = load i32, i32* %18, align 4
  %103 = add i32 %101, %102
  %104 = load i32, i32* @QEXPSHIFT, align 4
  %105 = lshr i32 %103, %104
  %106 = sub i32 0, %105
  %107 = load i32*, i32** %21, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  br label %127

111:                                              ; preds = %89
  %112 = load i32, i32* %22, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %17, align 4
  %117 = mul i32 %115, %116
  %118 = load i32, i32* %18, align 4
  %119 = add i32 %117, %118
  %120 = load i32, i32* @QEXPSHIFT, align 4
  %121 = lshr i32 %119, %120
  %122 = load i32*, i32** %21, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %114, %111
  br label %127

127:                                              ; preds = %126, %97
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %85

131:                                              ; preds = %85
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %20, align 4
  br label %63

135:                                              ; preds = %60, %63
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32* @slice_buffer_get_line(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
