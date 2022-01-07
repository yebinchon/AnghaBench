; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_h264.c_dxva2_h264_decode_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_h264.c_dxva2_h264_decode_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.dxva2_picture_context* }
%struct.dxva2_picture_context = type { i64, %struct.TYPE_14__, i32*, i32*, i32*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@MAX_SLICES = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_SI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32)* @dxva2_h264_decode_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxva2_h264_decode_slice(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.dxva2_picture_context*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 0
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = call i32* @DXVA_CONTEXT(%struct.TYPE_13__* %21)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %11, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %27, align 8
  store %struct.dxva2_picture_context* %28, %struct.dxva2_picture_context** %12, align 8
  %29 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %30 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAX_SLICES, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %111

35:                                               ; preds = %3
  %36 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %37 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %43 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %47 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %52 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = ptrtoint i32* %50 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i64 @is_slice_short(%struct.TYPE_13__* %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %44
  %64 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %65 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %68 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @fill_slice_short(i32* %70, i32 %71, i32 %72)
  br label %88

74:                                               ; preds = %44
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %77 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %80 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %84 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %83, i32 0, i32 1
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @fill_slice_long(%struct.TYPE_13__* %75, i32* %82, %struct.TYPE_14__* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %74, %63
  %89 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %90 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %88
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AV_PICTURE_TYPE_SI, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %12, align 8
  %106 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, -32769
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %98, %88
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %34
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32* @DXVA_CONTEXT(%struct.TYPE_13__*) #1

declare dso_local i64 @is_slice_short(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @fill_slice_short(i32*, i32, i32) #1

declare dso_local i32 @fill_slice_long(%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
