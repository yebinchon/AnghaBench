; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_soxenc.c_sox_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_soxenc.c_sox_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__**, i32*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@SOX_FIXED_HDR = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S32LE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".SoX\00", align 1
@AV_CODEC_ID_PCM_S32BE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"XoS.\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"invalid codec; use pcm_s32le or pcm_s32be\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @sox_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sox_write_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  store i64 0, i64* %8, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_12__* @av_dict_get(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %7, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strlen(i32 %32)
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %29, %1
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @FFALIGN(i64 %35, i32 8)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* @SOX_FIXED_HDR, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AV_CODEC_ID_PCM_S32LE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %34
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ffio_wfourcc(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @avio_wl32(i32* %50, i64 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @avio_wl64(i32* %55, i32 0)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @av_double2int(i32 %60)
  %62 = call i32 @avio_wl64(i32* %57, i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @avio_wl32(i32* %63, i64 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @avio_wl32(i32* %68, i64 %69)
  br label %108

71:                                               ; preds = %34
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AV_CODEC_ID_PCM_S32BE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @ffio_wfourcc(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @avio_wb32(i32* %80, i64 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @avio_wb64(i32* %85, i32 0)
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @av_double2int(i32 %90)
  %92 = call i32 @avio_wb64(i32* %87, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @avio_wb32(i32* %93, i64 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @avio_wb32(i32* %98, i64 %99)
  br label %107

101:                                              ; preds = %71
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 @av_log(%struct.TYPE_11__* %102, i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %126

107:                                              ; preds = %77
  br label %108

108:                                              ; preds = %107, %47
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @avio_write(i32* %112, i32 %115, i64 %116)
  br label %118

118:                                              ; preds = %111, %108
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %120, %121
  %123 = call i32 @ffio_fill(i32* %119, i32 0, i64 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @avio_flush(i32* %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %118, %101
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_12__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @FFALIGN(i64, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wl32(i32*, i64) #1

declare dso_local i32 @avio_wl64(i32*, i32) #1

declare dso_local i32 @av_double2int(i32) #1

declare dso_local i32 @avio_wb32(i32*, i64) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_write(i32*, i32, i64) #1

declare dso_local i32 @ffio_fill(i32*, i32, i64) #1

declare dso_local i32 @avio_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
