; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_ff_h264_draw_horiz_band.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_ff_h264_draw_horiz_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i64, i32)*, i64, i32 }
%struct.TYPE_12__ = type { i32 }

@PICT_FRAME = common dso_local global i64 0, align 8
@SLICE_FLAG_ALLOW_FIELD = common dso_local global i32 0, align 4
@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_draw_horiz_band(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_12__* @av_pix_fmt_desc_get(i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %11, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PICT_FRAME, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39, %4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %48, %50
  %52 = call i32 @FFMIN(i32 %45, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %44
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SLICE_FLAG_ALLOW_FIELD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %122

68:                                               ; preds = %60, %55, %44
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i64, i32)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i64, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i64, i32)* %71, null
  br i1 %72, label %73, label %122

73:                                               ; preds = %68
  %74 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %14, align 8
  %77 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %15, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %78, %83
  %85 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %84, i32* %85, align 16
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %12, align 4
  %88 = ashr i32 %86, %87
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %88, %93
  %95 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %94, i32* %96, align 4
  store i32 3, i32* %16, align 4
  br label %97

97:                                               ; preds = %105, %73
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %77, i64 %103
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %97

108:                                              ; preds = %97
  %109 = call i32 (...) @emms_c()
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i64, i32)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i64, i32)** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 %112(%struct.TYPE_14__* %113, %struct.TYPE_13__* %114, i32* %77, i32 %115, i64 %118, i32 %119)
  %121 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %121)
  br label %122

122:                                              ; preds = %67, %108, %68
  ret void
}

declare dso_local %struct.TYPE_12__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @FFMIN(i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @emms_c(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
