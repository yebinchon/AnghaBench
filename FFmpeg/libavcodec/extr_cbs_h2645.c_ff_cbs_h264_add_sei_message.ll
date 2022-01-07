; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_ff_cbs_h264_add_sei_message.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_ff_cbs_h264_add_sei_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }

@H264_NAL_SEI = common dso_local global i64 0, align 8
@H264_MAX_SEI_PAYLOADS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@cbs_h264_free_sei = common dso_local global i32 0, align 4
@H264_NAL_SLICE = common dso_local global i64 0, align 8
@H264_NAL_IDR_SLICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_cbs_h264_add_sei_message(i32* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @H264_NAL_SEI, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %18
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @H264_MAX_SEI_PAYLOADS, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %49

44:                                               ; preds = %29
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %45

45:                                               ; preds = %44, %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %12

49:                                               ; preds = %43, %12
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %123, label %52

52:                                               ; preds = %49
  %53 = call %struct.TYPE_12__* @av_mallocz(i32 32)
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %8, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %9, align 4
  br label %137

59:                                               ; preds = %52
  %60 = load i64, i64* @H264_NAL_SEI, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = bitcast %struct.TYPE_12__* %67 to i32*
  %69 = call i32* @av_buffer_create(i32* %68, i32 32, i32* @cbs_h264_free_sei, i32* null, i32 0)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %59
  %73 = call i32 @av_freep(%struct.TYPE_12__** %8)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %9, align 4
  br label %137

76:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %107, %76
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %77
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @H264_NAL_SLICE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %83
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @H264_NAL_IDR_SLICE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %94, %83
  br label %110

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %77

110:                                              ; preds = %105, %77
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i64, i64* @H264_NAL_SEI, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @ff_cbs_insert_unit_content(i32* %111, %struct.TYPE_13__* %112, i32 %113, i64 %114, %struct.TYPE_12__* %115, i32* %116)
  store i32 %117, i32* %9, align 4
  %118 = call i32 @av_buffer_unref(i32** %11)
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %137

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %49
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @memcpy(i32* %130, i32* %131, i32 4)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  store i32 0, i32* %4, align 4
  br label %141

137:                                              ; preds = %121, %72, %56
  %138 = load i32*, i32** %7, align 8
  %139 = call i32 @cbs_h264_free_sei_payload(i32* %138)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %123
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_12__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_buffer_create(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_12__**) #1

declare dso_local i32 @ff_cbs_insert_unit_content(i32*, %struct.TYPE_13__*, i32, i64, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @av_buffer_unref(i32**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cbs_h264_free_sei_payload(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
