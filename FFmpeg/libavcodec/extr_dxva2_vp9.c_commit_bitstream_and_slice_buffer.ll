; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_vp9.c_commit_bitstream_and_slice_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_vp9.c_commit_bitstream_and_slice_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.vp9_dxva2_picture_context* }
%struct.vp9_dxva2_picture_context = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i64 }

@CUR_FRAME = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to build bitstream\00", align 1
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8
@D3D11_VIDEO_DECODER_BUFFER_BITSTREAM = common dso_local global i32 0, align 4
@D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL = common dso_local global i32 0, align 4
@DXVA2_BitStreamDateBufferType = common dso_local global i32 0, align 4
@DXVA2_SliceControlBufferType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_25__*)* @commit_bitstream_and_slice_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_bitstream_and_slice_buffer(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vp9_dxva2_picture_context*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %8, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %20 = call i32* @DXVA_CONTEXT(%struct.TYPE_27__* %19)
  store i32* %20, i32** %9, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %24 = load i64, i64* @CUR_FRAME, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %26, align 8
  store %struct.vp9_dxva2_picture_context* %27, %struct.vp9_dxva2_picture_context** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %12, align 8
  %30 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %10, align 8
  %31 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 @av_log(%struct.TYPE_27__* %37, i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %89

40:                                               ; preds = %3
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %42 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %10, align 8
  %43 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %10, align 8
  %46 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(%struct.TYPE_25__* %41, i32 %44, i32 %48)
  %50 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %10, align 8
  %51 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 127
  %55 = sub i32 128, %54
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %10, align 8
  %58 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %56, %60
  %62 = call i32 @FFMIN(i32 %55, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %40
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %67 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %10, align 8
  %68 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i64 %71
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @memset(%struct.TYPE_25__* %72, i32 0, i32 %73)
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %10, align 8
  %77 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %65, %40
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %10, align 8
  %87 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %86, i32 0, i32 0
  %88 = call i32 @ff_dxva2_commit_buffer(%struct.TYPE_27__* %82, i32* %83, %struct.TYPE_25__* %84, i32 %85, %struct.TYPE_21__* %87, i32 4, i32 0)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %81, %36
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32* @DXVA_CONTEXT(%struct.TYPE_27__*) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @ff_dxva2_commit_buffer(%struct.TYPE_27__*, i32*, %struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
