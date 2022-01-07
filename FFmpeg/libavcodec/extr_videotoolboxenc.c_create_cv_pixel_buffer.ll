; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_create_cv_pixel_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_create_cv_pixel_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i64, i32, i64* }

@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4
@AV_PIX_FMT_VIDEOTOOLBOX = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Error: Cannot convert format %d color_range %d: %d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@kVTInvalidSessionErr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not get pixel buffer pool.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"VT session restarted because of a kVTInvalidSessionErr error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Could not create pixel buffer from pool: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32**)* @create_cv_pixel_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cv_pixel_buffer(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %20 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %17, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_PIX_FMT_VIDEOTOOLBOX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AV_PIX_FMT_VIDEOTOOLBOX, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @av_assert0(i32 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32**, i32*** %7, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = ptrtoint i32* %54 to i32
  %56 = call i32 @av_assert0(i32 %55)
  %57 = load i32**, i32*** %7, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @CFRetain(i32* %58)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %159

60:                                               ; preds = %3
  %61 = mul nuw i64 8, %21
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memset(i64* %23, i32 0, i32 %62)
  %64 = mul nuw i64 8, %25
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memset(i64* %26, i32 0, i32 %65)
  %67 = mul nuw i64 8, %28
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(i64* %29, i32 0, i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = call i32 @get_cv_pixel_info(%struct.TYPE_14__* %70, %struct.TYPE_13__* %71, i32* %9, i32* %8, i64* %23, i64* %26, i64* %29, i64* %15)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %60
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %76, i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %80, i32 %83, i32 %84)
  %86 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %159

87:                                               ; preds = %60
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @VTCompressionSessionGetPixelBufferPool(i32* %90)
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %132, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @VTCompressionSessionPrepareToEncodeFrames(i32* %97)
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* @kVTInvalidSessionErr, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %94
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @CFRelease(i32* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = call i32 @vtenc_configure_encoder(%struct.TYPE_14__* %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %102
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @VTCompressionSessionGetPixelBufferPool(i32* %116)
  store i64 %117, i64* %16, align 8
  br label %118

118:                                              ; preds = %113, %102
  br label %119

119:                                              ; preds = %118, %94
  %120 = load i64, i64* %16, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %123, i32 %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %126, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %159

127:                                              ; preds = %119
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = load i32, i32* @AV_LOG_WARNING, align 4
  %130 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %128, i32 %129, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131, %87
  %133 = load i64, i64* %16, align 8
  %134 = load i32**, i32*** %7, align 8
  %135 = call i32 @CVPixelBufferPoolCreatePixelBuffer(i32* null, i64 %133, i32** %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %139, i32 %140, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %143, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %159

144:                                              ; preds = %132
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %147 = load i32**, i32*** %7, align 8
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @copy_avframe_to_pixel_buffer(%struct.TYPE_14__* %145, %struct.TYPE_13__* %146, i32* %148, i64* %29, i64* %26)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load i32**, i32*** %7, align 8
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @CFRelease(i32* %154)
  %156 = load i32**, i32*** %7, align 8
  store i32* null, i32** %156, align 8
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %159

158:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %159

159:                                              ; preds = %158, %152, %138, %122, %75, %38
  %160 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @CFRetain(i32*) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @get_cv_pixel_info(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32*, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #2

declare dso_local i64 @VTCompressionSessionGetPixelBufferPool(i32*) #2

declare dso_local i64 @VTCompressionSessionPrepareToEncodeFrames(i32*) #2

declare dso_local i32 @CFRelease(i32*) #2

declare dso_local i32 @vtenc_configure_encoder(%struct.TYPE_14__*) #2

declare dso_local i32 @CVPixelBufferPoolCreatePixelBuffer(i32*, i64, i32**) #2

declare dso_local i32 @copy_avframe_to_pixel_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
