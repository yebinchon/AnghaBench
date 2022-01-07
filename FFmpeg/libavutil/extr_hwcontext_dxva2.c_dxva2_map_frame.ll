; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_dxva2.c_dxva2_map_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_dxva2.c_dxva2_map_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32**, i32*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error getting a surface description\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_WRITE = common dso_local global i32 0, align 4
@D3DLOCK_READONLY = common dso_local global i32 0, align 4
@AV_HWFRAME_MAP_OVERWRITE = common dso_local global i32 0, align 4
@D3DLOCK_DISCARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to lock DXVA2 surface\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dxva2_unmap_frame = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)* @dxva2_map_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxva2_map_frame(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  store i32 0, i32* %18, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @av_pix_fmt_count_planes(i64 %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @IDirect3DSurface9_GetDesc(i32* %28, %struct.TYPE_15__* %12)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(i32* %34, i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %37, i32* %5, align 4
  br label %140

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @AV_HWFRAME_MAP_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @D3DLOCK_READONLY, align 4
  %45 = load i32, i32* %18, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %18, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @AV_HWFRAME_MAP_OVERWRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @D3DLOCK_DISCARD, align 4
  %54 = load i32, i32* %18, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %18, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @IDirect3DSurface9_LockRect(i32* %57, %struct.TYPE_16__* %13, i32* null, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 @av_log(i32* %64, i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %67, i32* %5, align 4
  br label %140

68:                                               ; preds = %56
  %69 = call %struct.TYPE_14__* @av_mallocz(i32 8)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %11, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = icmp ne %struct.TYPE_14__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %16, align 4
  br label %136

75:                                               ; preds = %68
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = load i32, i32* @dxva2_unmap_frame, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = call i32 @ff_hwframe_map_create(i32 %78, %struct.TYPE_17__* %79, %struct.TYPE_17__* %80, i32 %81, %struct.TYPE_14__* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = call i32 @av_freep(%struct.TYPE_14__** %11)
  br label %136

88:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %102, %88
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %89

105:                                              ; preds = %89
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @av_image_fill_pointers(i32** %108, i64 %111, i32 %113, i32* %116, i32* %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %105
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 1
  store i32* %130, i32** %134, align 8
  br label %135

135:                                              ; preds = %126, %105
  store i32 0, i32* %5, align 4
  br label %140

136:                                              ; preds = %86, %72
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @IDirect3DSurface9_UnlockRect(i32* %137)
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %135, %63, %33
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @av_pix_fmt_count_planes(i64) #1

declare dso_local i32 @IDirect3DSurface9_GetDesc(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @IDirect3DSurface9_LockRect(i32*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_hwframe_map_create(i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_14__**) #1

declare dso_local i32 @av_image_fill_pointers(i32**, i64, i32, i32*, i32*) #1

declare dso_local i32 @IDirect3DSurface9_UnlockRect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
