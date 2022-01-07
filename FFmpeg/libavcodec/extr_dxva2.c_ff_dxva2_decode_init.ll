; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_ff_dxva2_decode_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_ff_dxva2_decode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__*, %struct.TYPE_22__*, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i64, i32, i32, i32, %struct.TYPE_25__, i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { %struct.dxva_context, %struct.TYPE_30__ }
%struct.dxva_context = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_28__*, %struct.TYPE_24__* }
%struct.TYPE_28__ = type { i32, i32 }

@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8
@AV_HWDEVICE_TYPE_DXVA2 = common dso_local global i32 0, align 4
@AV_HWDEVICE_TYPE_D3D11VA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid pixfmt for hwaccel!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_D3D11 = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dxva2_decode_init(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %9 = call %struct.TYPE_26__* @DXVA_SHARED_CONTEXT(%struct.TYPE_21__* %8)
  store %struct.TYPE_26__* %9, %struct.TYPE_26__** %4, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AV_PIX_FMT_DXVA2_VLD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @AV_HWDEVICE_TYPE_DXVA2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @AV_HWDEVICE_TYPE_D3D11VA, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %73

28:                                               ; preds = %21
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ff_decode_get_hw_frames_ctx(%struct.TYPE_21__* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %73

43:                                               ; preds = %28
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %49, %struct.TYPE_27__** %5, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 9
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %54, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %43
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = call i32 @av_log(%struct.TYPE_21__* %63, i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %7, align 4
  br label %69

68:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = call i32 @ff_dxva2_decode_uninit(%struct.TYPE_21__* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %68, %41, %27
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_26__* @DXVA_SHARED_CONTEXT(%struct.TYPE_21__*) #1

declare dso_local i32 @ff_decode_get_hw_frames_ctx(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_dxva2_decode_uninit(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
