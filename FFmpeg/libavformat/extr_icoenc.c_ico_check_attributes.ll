; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_icoenc.c_ico_check_attributes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_icoenc.c_ico_check_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i8* }

@AV_CODEC_ID_BMP = common dso_local global i64 0, align 8
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB32 = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGRA = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Wrong endianness for bmp pixel format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB555LE = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"BMP must be 1bit, 4bit, 8bit, 16bit, 24bit, or 32bit\0A\00", align 1
@AV_CODEC_ID_PNG = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGBA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"PNG in ico requires pixel format to be rgba\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unsupported codec %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Unsupported dimensions %dx%d (dimensions cannot exceed 256x256)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @ico_check_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ico_check_attributes(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AV_CODEC_ID_BMP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load i64, i64* @AV_PIX_FMT_RGB32, align 8
  %20 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %23, i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %122

28:                                               ; preds = %18, %12
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_PIX_FMT_RGB555LE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %53, i32 %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %122

58:                                               ; preds = %46, %40, %34, %28
  br label %59

59:                                               ; preds = %58
  br label %99

60:                                               ; preds = %2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AV_CODEC_ID_PNG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AV_PIX_FMT_RGBA, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %73, i32 %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %3, align 4
  br label %122

78:                                               ; preds = %66
  br label %98

79:                                               ; preds = %60
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.TYPE_6__* @avcodec_descriptor_get(i64 %82)
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %6, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i8* [ %91, %88 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %92 ]
  %95 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %84, i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = call i32 @AVERROR(i32 %96)
  store i32 %97, i32* %3, align 4
  br label %122

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %59
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 256
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 256
  br i1 %108, label %109, label %121

109:                                              ; preds = %104, %99
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %110, i32 %111, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = call i32 @AVERROR(i32 %119)
  store i32 %120, i32* %3, align 4
  br label %122

121:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %109, %93, %72, %52, %22
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_6__* @avcodec_descriptor_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
