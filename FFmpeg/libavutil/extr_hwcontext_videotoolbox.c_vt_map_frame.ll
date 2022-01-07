; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_videotoolbox.c_vt_map_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_videotoolbox.c_vt_map_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unsupported or mismatching pixel format: %s\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Inconsistent frame dimensions.\0A\00", align 1
@AV_HWFRAME_MAP_READ = common dso_local global i32 0, align 4
@kCVPixelBufferLock_ReadOnly = common dso_local global i64 0, align 8
@kCVReturnSuccess = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Error locking the pixel buffer.\0A\00", align 1
@vt_unmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @vt_map_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_map_frame(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @CVPixelBufferGetPixelFormatType(i32 %23)
  store i32 %24, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @av_map_videotoolbox_format_to_pixfmt(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @av_fourcc2str(i32 %35)
  %37 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %33, i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %38, i32* %5, align 4
  br label %142

39:                                               ; preds = %4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @CVPixelBufferGetWidth(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @CVPixelBufferGetHeight(i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46, %39
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %54, i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %57, i32* %5, align 4
  br label %142

58:                                               ; preds = %46
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @AV_HWFRAME_MAP_READ, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @kCVPixelBufferLock_ReadOnly, align 8
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %10, align 4
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @CVPixelBufferLockBaseAddress(i32 %65, i64 %66)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @kCVReturnSuccess, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %72, i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %75, i32* %5, align 4
  br label %142

76:                                               ; preds = %64
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @CVPixelBufferIsPlanar(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @CVPixelBufferGetPlaneCount(i32 %81)
  store i32 %82, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %106, %80
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @CVPixelBufferGetBaseAddressOfPlane(i32 %88, i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @CVPixelBufferGetBytesPerRowOfPlane(i32 %97, i32 %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %87
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %83

109:                                              ; preds = %83
  br label %123

110:                                              ; preds = %76
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @CVPixelBufferGetBaseAddress(i32 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @CVPixelBufferGetBytesPerRow(i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %110, %109
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = load i32, i32* @vt_unmap, align 4
  %130 = load i64, i64* %13, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @ff_hwframe_map_create(i32 %126, %struct.TYPE_10__* %127, %struct.TYPE_10__* %128, i32 %129, i8* %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %137

136:                                              ; preds = %123
  store i32 0, i32* %5, align 4
  br label %142

137:                                              ; preds = %135
  %138 = load i32, i32* %10, align 4
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @CVPixelBufferUnlockBaseAddress(i32 %138, i64 %139)
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %137, %136, %71, %53, %32
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @CVPixelBufferGetPixelFormatType(i32) #1

declare dso_local i32 @av_map_videotoolbox_format_to_pixfmt(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @av_fourcc2str(i32) #1

declare dso_local i64 @CVPixelBufferGetWidth(i32) #1

declare dso_local i64 @CVPixelBufferGetHeight(i32) #1

declare dso_local i64 @CVPixelBufferLockBaseAddress(i32, i64) #1

declare dso_local i64 @CVPixelBufferIsPlanar(i32) #1

declare dso_local i32 @CVPixelBufferGetPlaneCount(i32) #1

declare dso_local i32 @CVPixelBufferGetBaseAddressOfPlane(i32, i32) #1

declare dso_local i32 @CVPixelBufferGetBytesPerRowOfPlane(i32, i32) #1

declare dso_local i32 @CVPixelBufferGetBaseAddress(i32) #1

declare dso_local i32 @CVPixelBufferGetBytesPerRow(i32) #1

declare dso_local i32 @ff_hwframe_map_create(i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @CVPixelBufferUnlockBaseAddress(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
