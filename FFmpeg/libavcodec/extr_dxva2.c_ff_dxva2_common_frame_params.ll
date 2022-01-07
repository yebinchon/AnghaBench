; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_ff_dxva2_common_frame_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_ff_dxva2_common_frame_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_11__*, i8*, i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@AV_HWDEVICE_TYPE_DXVA2 = common dso_local global i64 0, align 8
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8
@AV_HWDEVICE_TYPE_D3D11VA = common dso_local global i64 0, align 8
@AV_PIX_FMT_D3D11 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_HEVC = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_CODEC_ID_VP9 = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV420P10 = common dso_local global i64 0, align 8
@AV_PIX_FMT_P010 = common dso_local global i32 0, align 4
@AV_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@D3D11_BIND_DECODER = common dso_local global i32 0, align 4
@DXVA2_VideoDecoderRenderTarget = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dxva2_common_frame_params(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AV_HWDEVICE_TYPE_DXVA2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, i64* @AV_PIX_FMT_DXVA2_VLD, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AV_HWDEVICE_TYPE_D3D11VA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @AV_PIX_FMT_D3D11, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %115

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 32, i32* %8, align 4
  br label %56

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AV_CODEC_ID_HEVC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 128, i32* %8, align 4
  br label %55

54:                                               ; preds = %47
  store i32 16, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %46
  store i32 1, i32* %9, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AV_CODEC_ID_HEVC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %56
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 16
  store i32 %70, i32* %9, align 4
  br label %84

71:                                               ; preds = %62
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AV_CODEC_ID_VP9, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 8
  store i32 %79, i32* %9, align 4
  br label %83

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %68
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AV_PIX_FMT_YUV420P10, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @AV_PIX_FMT_P010, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @AV_PIX_FMT_NV12, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i8* @FFALIGN(i32 %100, i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i8* @FFALIGN(i32 %107, i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %94, %36
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
