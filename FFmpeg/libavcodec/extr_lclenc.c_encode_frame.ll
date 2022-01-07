; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lclenc.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lclenc.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i64* }

@AV_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Format not supported!\0A\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Deflate reset error: %d\0A\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Deflate error: %d\0A\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %10, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = mul nsw i32 %26, 3
  %28 = call i32 @deflateBound(%struct.TYPE_14__* %19, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @ff_alloc_packet2(%struct.TYPE_18__* %29, %struct.TYPE_16__* %30, i32 %31, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %145

36:                                               ; preds = %4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %43, i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %145

46:                                               ; preds = %36
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = call i32 @deflateReset(%struct.TYPE_14__* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @Z_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %54, i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 -1, i32* %5, align 4
  br label %145

58:                                               ; preds = %46
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %116, %58
  %76 = load i32, i32* %11, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %75
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %83, %91
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  store i64 %92, i64* %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 3
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* @Z_NO_FLUSH, align 4
  %106 = call i32 @deflate(%struct.TYPE_14__* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @Z_OK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %78
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %111, i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  store i32 -1, i32* %5, align 4
  br label %145

115:                                              ; preds = %78
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %11, align 4
  br label %75

119:                                              ; preds = %75
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* @Z_FINISH, align 4
  %123 = call i32 @deflate(%struct.TYPE_14__* %121, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @Z_STREAM_END, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %128, i32 %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  store i32 -1, i32* %5, align 4
  br label %145

132:                                              ; preds = %119
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32*, i32** %9, align 8
  store i32 1, i32* %144, align 4
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %132, %127, %110, %53, %42, %34
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @deflateBound(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_18__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @deflateReset(%struct.TYPE_14__*) #1

declare dso_local i32 @deflate(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
