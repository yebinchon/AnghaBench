; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_calc_swfhash.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_calc_swfhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot open connection %s.\0A\00", align 1
@AVSEEK_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"CWS\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Zlib is required for decompressing the SWF player file.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Genuine Adobe Flash Player 001\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rtmp_swfhash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @rtmp_calc_swfhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_calc_swfhash(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  store float* null, float** %4, align 8
  store float* null, float** %5, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AVIO_FLAG_READ, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = call i32 @ffurl_open_whitelist(%struct.TYPE_11__** %8, i32 %17, i32 %18, i32* %20, i32* null, i32 %23, i32 %26, %struct.TYPE_11__* %27)
  store i32 %28, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %31, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %91

37:                                               ; preds = %1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = load i32, i32* @AVSEEK_SIZE, align 4
  %40 = call i32 @ffurl_seek(%struct.TYPE_11__* %38, i32 0, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EIO, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %11, align 4
  br label %91

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = call float* @av_malloc(i32 %46)
  store float* %47, float** %4, align 8
  %48 = icmp ne float* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %11, align 4
  br label %91

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = load float*, float** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ffurl_read_complete(%struct.TYPE_11__* %53, float* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %91

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %11, align 4
  br label %91

64:                                               ; preds = %59
  %65 = load float*, float** %4, align 8
  %66 = call i32 @memcmp(float* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %69, i32 %70, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %11, align 4
  br label %91

74:                                               ; preds = %64
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %10, align 4
  %76 = load float*, float** %4, align 8
  store float* %76, float** %6, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load float*, float** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %81 = call i32 @ff_rtmp_calc_digest(float* %78, i32 %79, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 30, i8* %80)
  store i32 %81, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %91

84:                                               ; preds = %77
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %87 = call i32 @av_opt_set_bin(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %86, i32 32, i32 0)
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %83, %68, %62, %58, %49, %42, %30
  %92 = call i32 @av_freep(float** %4)
  %93 = call i32 @av_freep(float** %5)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = call i32 @ffurl_close(%struct.TYPE_11__* %94)
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

declare dso_local i32 @ffurl_open_whitelist(%struct.TYPE_11__**, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @ffurl_seek(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local float* @av_malloc(i32) #1

declare dso_local i32 @ffurl_read_complete(%struct.TYPE_11__*, float*, i32) #1

declare dso_local i32 @memcmp(float*, i8*, i32) #1

declare dso_local i32 @ff_rtmp_calc_digest(float*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @av_opt_set_bin(%struct.TYPE_12__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @av_freep(float**) #1

declare dso_local i32 @ffurl_close(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
