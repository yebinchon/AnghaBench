; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_hevc.c_commit_bitstream_and_slice_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_hevc.c_commit_bitstream_and_slice_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.hevc_dxva2_picture_context* }
%struct.hevc_dxva2_picture_context = type { i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@commit_bitstream_and_slice_buffer.start_code = internal constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@commit_bitstream_and_slice_buffer.start_code_size = internal constant i32 12, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to build bitstream\00", align 1
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8
@D3D11_VIDEO_DECODER_BUFFER_BITSTREAM = common dso_local global i32 0, align 4
@D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL = common dso_local global i32 0, align 4
@DXVA2_BitStreamDateBufferType = common dso_local global i32 0, align 4
@DXVA2_SliceControlBufferType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, i32*)* @commit_bitstream_and_slice_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_bitstream_and_slice_buffer(%struct.TYPE_17__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.hevc_dxva2_picture_context*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %8, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i32* @DXVA_CONTEXT(%struct.TYPE_17__* %28)
  store i32* %29, i32** %9, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %10, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %34, align 8
  store %struct.hevc_dxva2_picture_context* %35, %struct.hevc_dxva2_picture_context** %11, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %17, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32* %42, i32** %16, align 8
  store i32 0, i32* %21, align 4
  br label %43

43:                                               ; preds = %107, %3
  %44 = load i32, i32* %21, align 4
  %45 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %11, align 8
  %46 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %43
  %50 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %11, align 8
  %51 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %50, i32 0, i32 2
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load i32, i32* %21, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i64 %54
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %12, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %23, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = add i32 12, %62
  %64 = zext i32 %63 to i64
  %65 = load i32*, i32** %16, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = icmp sgt i64 %64, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %49
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 @av_log(%struct.TYPE_17__* %73, i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %110

76:                                               ; preds = %49
  %77 = load i32*, i32** %15, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %24, align 4
  %87 = add i32 12, %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @memcpy(i32* %90, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @commit_bitstream_and_slice_buffer.start_code, i64 0, i64 0), i32 12)
  %92 = load i32*, i32** %15, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 12
  store i32* %93, i32** %15, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %11, align 8
  %96 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %23, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %24, align 4
  %102 = call i32 @memcpy(i32* %94, i32* %100, i32 %101)
  %103 = load i32, i32* %24, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %15, align 8
  br label %107

107:                                              ; preds = %76
  %108 = load i32, i32* %21, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %43

110:                                              ; preds = %72, %43
  %111 = load i32*, i32** %15, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = and i64 %116, 127
  %118 = sub nsw i64 128, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %16, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = ptrtoint i32* %120 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32 @FFMIN(i32 %119, i32 %126)
  store i32 %127, i32* %20, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %129 = icmp ne %struct.TYPE_16__* %128, null
  br i1 %129, label %130, label %146

130:                                              ; preds = %110
  %131 = load i32, i32* %20, align 4
  %132 = icmp ugt i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %130
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @memset(i32* %134, i32 0, i32 %135)
  %137 = load i32, i32* %20, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %15, align 8
  %141 = load i32, i32* %20, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %133, %130, %110
  %147 = load i32, i32* %21, align 4
  %148 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %11, align 8
  %149 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 -1, i32* %4, align 4
  br label %181

153:                                              ; preds = %146
  %154 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %11, align 8
  %155 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %154, i32 0, i32 2
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = bitcast %struct.TYPE_16__* %156 to i8*
  store i8* %157, i8** %18, align 8
  %158 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %11, align 8
  %159 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = zext i32 %160 to i64
  %162 = mul i64 %161, 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %19, align 4
  %164 = load i32*, i32** %15, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = ptrtoint i32* %164 to i64
  %167 = ptrtoint i32* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 4
  %170 = and i64 %169, 127
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @av_assert0(i32 %172)
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* %22, align 4
  %178 = load i8*, i8** %18, align 8
  %179 = load i32, i32* %19, align 4
  %180 = call i32 @ff_dxva2_commit_buffer(%struct.TYPE_17__* %174, i32* %175, i32* %176, i32 %177, i8* %178, i32 %179, i32 0)
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %153, %152
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32* @DXVA_CONTEXT(%struct.TYPE_17__*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_dxva2_commit_buffer(%struct.TYPE_17__*, i32*, i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
