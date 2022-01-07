; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_mpeg2.c_commit_bitstream_and_slice_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_mpeg2.c_commit_bitstream_and_slice_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.MpegEncContext* }
%struct.MpegEncContext = type { i64, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.dxva2_picture_context* }
%struct.dxva2_picture_context = type { i32, %struct.TYPE_22__*, i32* }
%struct.TYPE_22__ = type { i32, i32, i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }

@PICT_FRAME = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to build bitstream\00", align 1
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8
@D3D11_VIDEO_DECODER_BUFFER_BITSTREAM = common dso_local global i32 0, align 4
@D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL = common dso_local global i32 0, align 4
@DXVA2_BitStreamDateBufferType = common dso_local global i32 0, align 4
@DXVA2_SliceControlBufferType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*)* @commit_bitstream_and_slice_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_bitstream_and_slice_buffer(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.MpegEncContext*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dxva2_picture_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = load %struct.MpegEncContext*, %struct.MpegEncContext** %24, align 8
  store %struct.MpegEncContext* %25, %struct.MpegEncContext** %8, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = call i32* @DXVA_CONTEXT(%struct.TYPE_24__* %26)
  store i32* %27, i32** %9, align 8
  %28 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %29 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %28, i32 0, i32 3
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %31, align 8
  store %struct.dxva2_picture_context* %32, %struct.dxva2_picture_context** %10, align 8
  %33 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %34 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PICT_FRAME, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %40 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %43 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %44, %45
  %47 = mul nsw i32 %41, %46
  store i32 %47, i32* %12, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %17, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %16, align 8
  store i32 0, i32* %18, align 4
  br label %55

55:                                               ; preds = %140, %3
  %56 = load i32, i32* %18, align 4
  %57 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %58 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %143

61:                                               ; preds = %55
  %62 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %63 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %62, i32 0, i32 1
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = load i32, i32* %18, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i64 %66
  store %struct.TYPE_22__* %67, %struct.TYPE_22__** %20, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %21, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 8
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %22, align 4
  %76 = zext i32 %75 to i64
  %77 = load i32*, i32** %16, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = icmp sgt i64 %76, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %61
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 @av_log(%struct.TYPE_24__* %85, i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %143

88:                                               ; preds = %61
  %89 = load i32*, i32** %15, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %100 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub i32 %101, 1
  %103 = icmp ult i32 %98, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %88
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %108, %112
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  br label %126

116:                                              ; preds = %88
  %117 = load i32, i32* %12, align 4
  %118 = zext i32 %117 to i64
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %118, %122
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %116, %104
  %127 = load i32*, i32** %15, align 8
  %128 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %129 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %21, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @memcpy(i32* %127, i32* %133, i32 %134)
  %136 = load i32, i32* %22, align 4
  %137 = load i32*, i32** %15, align 8
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %15, align 8
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %18, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %18, align 4
  br label %55

143:                                              ; preds = %84, %55
  %144 = load i32, i32* %18, align 4
  %145 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %146 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ult i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %166

150:                                              ; preds = %143
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %154 = load i32, i32* %19, align 4
  %155 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %156 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %155, i32 0, i32 1
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %159 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = zext i32 %160 to i64
  %162 = mul i64 %161, 16
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @ff_dxva2_commit_buffer(%struct.TYPE_24__* %151, i32* %152, %struct.TYPE_23__* %153, i32 %154, %struct.TYPE_22__* %157, i32 %163, i32 %164)
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %150, %149
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32* @DXVA_CONTEXT(%struct.TYPE_24__*) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_dxva2_commit_buffer(%struct.TYPE_24__*, i32*, %struct.TYPE_23__*, i32, %struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
