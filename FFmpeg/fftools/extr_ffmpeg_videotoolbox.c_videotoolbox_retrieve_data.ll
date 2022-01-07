; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_videotoolbox.c_videotoolbox_retrieve_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_videotoolbox.c_videotoolbox_retrieve_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32* }

@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_UYVY422 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGRA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: Unsupported pixel format: %s\0A\00", align 1
@videotoolbox_pixfmt = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@kCVPixelBufferLock_ReadOnly = common dso_local global i32 0, align 4
@kCVReturnSuccess = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Error locking the pixel buffer.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AV_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_P010 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @videotoolbox_retrieve_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videotoolbox_retrieve_data(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [4 x i32*], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %6, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %7, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @CVPixelBufferGetPixelFormatType(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = bitcast [4 x i32*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 32, i1 false)
  %30 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 16, i1 false)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = call i32 @av_frame_unref(%struct.TYPE_15__* %33)
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %54 [
    i32 129, label %36
    i32 128, label %42
    i32 134, label %48
  ]

36:                                               ; preds = %2
  %37 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 8
  br label %64

42:                                               ; preds = %2
  %43 = load i32, i32* @AV_PIX_FMT_UYVY422, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 8
  br label %64

48:                                               ; preds = %2
  %49 = load i32, i32* @AV_PIX_FMT_BGRA, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 8
  br label %64

54:                                               ; preds = %2
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @av_fourcc2str(i32 %58)
  %60 = load i32, i32* @videotoolbox_pixfmt, align 4
  %61 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @ENOSYS, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %178

64:                                               ; preds = %48, %42, %36
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = call i32 @av_frame_get_buffer(%struct.TYPE_15__* %81, i32 32)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %64
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %3, align 4
  br label %178

87:                                               ; preds = %64
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @kCVPixelBufferLock_ReadOnly, align 4
  %90 = call i64 @CVPixelBufferLockBaseAddress(i32 %88, i32 %89)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @kCVReturnSuccess, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %97, i32* %3, align 4
  br label %178

98:                                               ; preds = %87
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @CVPixelBufferIsPlanar(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @CVPixelBufferGetPlaneCount(i32 %103)
  store i32 %104, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %122, %102
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32* @CVPixelBufferGetBaseAddressOfPlane(i32 %110, i32 %111)
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %114
  store i32* %112, i32** %115, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @CVPixelBufferGetBytesPerRowOfPlane(i32 %116, i32 %117)
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %120
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %109
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %105

125:                                              ; preds = %105
  br label %133

126:                                              ; preds = %98
  %127 = load i32, i32* %8, align 4
  %128 = call i32* @CVPixelBufferGetBaseAddress(i32 %127)
  %129 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  store i32* %128, i32** %129, align 16
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @CVPixelBufferGetBytesPerRow(i32 %130)
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %131, i32* %132, align 16
  br label %133

133:                                              ; preds = %126, %125
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @av_image_copy(i32* %138, i32 %143, i32** %144, i32* %145, i32 %150, i32 %153, i32 %156)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = call i32 @av_frame_copy_props(%struct.TYPE_15__* %160, %struct.TYPE_15__* %161)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @kCVPixelBufferLock_ReadOnly, align 4
  %165 = call i32 @CVPixelBufferUnlockBaseAddress(i32 %163, i32 %164)
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %133
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %3, align 4
  br label %178

170:                                              ; preds = %133
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %172 = call i32 @av_frame_unref(%struct.TYPE_15__* %171)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = call i32 @av_frame_move_ref(%struct.TYPE_15__* %173, %struct.TYPE_15__* %176)
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %170, %168, %94, %85, %54
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @CVPixelBufferGetPixelFormatType(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_frame_unref(%struct.TYPE_15__*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @av_fourcc2str(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @CVPixelBufferLockBaseAddress(i32, i32) #1

declare dso_local i64 @CVPixelBufferIsPlanar(i32) #1

declare dso_local i32 @CVPixelBufferGetPlaneCount(i32) #1

declare dso_local i32* @CVPixelBufferGetBaseAddressOfPlane(i32, i32) #1

declare dso_local i32 @CVPixelBufferGetBytesPerRowOfPlane(i32, i32) #1

declare dso_local i32* @CVPixelBufferGetBaseAddress(i32) #1

declare dso_local i32 @CVPixelBufferGetBytesPerRow(i32) #1

declare dso_local i32 @av_image_copy(i32*, i32, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @CVPixelBufferUnlockBaseAddress(i32, i32) #1

declare dso_local i32 @av_frame_move_ref(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
