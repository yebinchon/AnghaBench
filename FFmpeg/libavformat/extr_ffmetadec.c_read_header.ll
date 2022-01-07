; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ffmetadec.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ffmetadec.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_16__**, i32, i64, i32, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32* }

@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@ID_STREAM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_FFMETADATA = common dso_local global i32 0, align 4
@ID_CHAPTER = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_20__, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 5
  store i32** %9, i32*** %4, align 8
  %10 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %11 = call i32 @av_bprint_init(%struct.TYPE_20__* %5, i32 0, i32 %10)
  br label %12

12:                                               ; preds = %77, %1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @avio_feof(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %78

19:                                               ; preds = %12
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @get_bprint_line(i32 %22, %struct.TYPE_20__* %5)
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ID_STREAM, align 4
  %27 = load i32, i32* @ID_STREAM, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = call i32 @memcmp(i32 %25, i32 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %19
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = call %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_18__* %32, i32* null)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %6, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %116

39:                                               ; preds = %31
  %40 = load i32, i32* @AVMEDIA_TYPE_DATA, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @AV_CODEC_ID_FFMETADATA, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i32** %51, i32*** %4, align 8
  br label %77

52:                                               ; preds = %19
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ID_CHAPTER, align 4
  %56 = load i32, i32* @ID_CHAPTER, align 4
  %57 = call i32 @strlen(i32 %56)
  %58 = call i32 @memcmp(i32 %54, i32 %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = call %struct.TYPE_19__* @read_chapter(%struct.TYPE_18__* %61)
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %7, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = icmp ne %struct.TYPE_19__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %116

68:                                               ; preds = %60
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  store i32** %70, i32*** %4, align 8
  br label %76

71:                                               ; preds = %52
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32**, i32*** %4, align 8
  %75 = call i32 @read_tag(i32 %73, i32** %74)
  br label %76

76:                                               ; preds = %71, %68
  br label %77

77:                                               ; preds = %76, %39
  br label %12

78:                                               ; preds = %12
  %79 = call i32 @av_bprint_finalize(%struct.TYPE_20__* %5, i32* null)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %78
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %89, i64 %94
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %101, i64 %106
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %112 = call i32 @av_rescale_q(i32 %98, i32 %110, i32 %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %86, %78
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %65, %36
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @avio_feof(i32) #1

declare dso_local i32 @get_bprint_line(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_19__* @read_chapter(%struct.TYPE_18__*) #1

declare dso_local i32 @read_tag(i32, i32**) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
