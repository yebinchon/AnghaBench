; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_decode.c_ff_vaapi_decode_make_slice_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_decode.c_ff_vaapi_decode_make_slice_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@VASliceParameterBufferType = common dso_local global i32 0, align 4
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to create slice parameter buffer: %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Slice %d param buffer (%zu bytes) is %#x.\0A\00", align 1
@VASliceDataBufferType = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Failed to create slice data buffer (size %zu): %d (%s).\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Slice %d data buffer (%zu bytes) is %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vaapi_decode_make_slice_buffer(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %14, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @av_assert0(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %6
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %45, align 4
  br label %51

48:                                               ; preds = %38
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store i32 64, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @av_realloc_array(i32* %54, i32 %57, i32 8)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %7, align 4
  br label %197

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %6
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @av_assert0(i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 2, %82
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @VASliceParameterBufferType, align 4
  %93 = load i64, i64* %11, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i64 @vaCreateBuffer(i32 %88, i32 %91, i32 %92, i64 %93, i32 1, i8* %94, i32* %100)
  store i64 %101, i64* %15, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %69
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @vaErrorStr(i64 %109)
  %111 = sext i32 %110 to i64
  %112 = call i32 (%struct.TYPE_13__*, i32, i8*, i64, i64, ...) @av_log(%struct.TYPE_13__* %106, i32 %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %108, i64 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %7, align 4
  br label %197

115:                                              ; preds = %69
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %117 = load i32, i32* @AV_LOG_DEBUG, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.TYPE_13__*, i32, i8*, i64, i64, ...) @av_log(%struct.TYPE_13__* %116, i32 %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %121, i64 %122, i32 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @VASliceDataBufferType, align 4
  %140 = load i64, i64* %13, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = call i64 @vaCreateBuffer(i32 %135, i32 %138, i32 %139, i64 %140, i32 1, i8* %141, i32* %148)
  store i64 %149, i64* %15, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %115
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = load i32, i32* @AV_LOG_ERROR, align 4
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %15, align 8
  %159 = call i32 @vaErrorStr(i64 %158)
  %160 = call i32 (%struct.TYPE_13__*, i32, i8*, i64, i64, ...) @av_log(%struct.TYPE_13__* %154, i32 %155, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %156, i64 %157, i32 %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @vaDestroyBuffer(i32 %165, i32 %172)
  %174 = load i32, i32* @EIO, align 4
  %175 = call i32 @AVERROR(i32 %174)
  store i32 %175, i32* %7, align 4
  br label %197

176:                                              ; preds = %115
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %178 = load i32, i32* @AV_LOG_DEBUG, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %13, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.TYPE_13__*, i32, i8*, i64, i64, ...) @av_log(%struct.TYPE_13__* %177, i32 %178, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %182, i64 %183, i32 %191)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  store i32 0, i32* %7, align 4
  br label %197

197:                                              ; preds = %176, %153, %105, %65
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32* @av_realloc_array(i32*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @vaCreateBuffer(i32, i32, i32, i64, i32, i8*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i64, i64, ...) #1

declare dso_local i32 @vaErrorStr(i64) #1

declare dso_local i32 @vaDestroyBuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
