; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vble.c_vble_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vble.c_vble_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8* }

@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid packet size\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported VBLE Version: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Invalid Code\0A\00", align 1
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_18__*)* @vble_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vble_decode_frame(%struct.TYPE_20__* %0, i8* %1, i32* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %11, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %17, align 4
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %50, label %42

42:                                               ; preds = %4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 4
  %47 = load i32, i32* @INT_MAX, align 4
  %48 = sdiv i32 %47, 8
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42, %4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %51, i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %144

55:                                               ; preds = %42
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = call i32 @ff_thread_get_buffer(%struct.TYPE_20__* %56, %struct.TYPE_17__* %19, i32 0)
  store i32 %57, i32* %18, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %18, align 4
  store i32 %60, i32* %5, align 4
  br label %144

61:                                               ; preds = %55
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @AV_RL32(i32* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = load i32, i32* @AV_LOG_WARNING, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %72, i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %61
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 4
  %83 = mul nsw i32 %82, 8
  %84 = call i32 @init_get_bits(i32* %12, i32* %78, i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = call i64 @vble_unpack(%struct.TYPE_16__* %85, i32* %12)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %89, i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %5, align 4
  br label %144

93:                                               ; preds = %76
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @vble_restore_plane(%struct.TYPE_16__* %94, %struct.TYPE_19__* %95, i32* %12, i32 0, i32 %96, i32 %99, i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %139, label %112

112:                                              ; preds = %93
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %15, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @vble_restore_plane(%struct.TYPE_16__* %122, %struct.TYPE_19__* %123, i32* %12, i32 1, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %17, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %15, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @vble_restore_plane(%struct.TYPE_16__* %133, %struct.TYPE_19__* %134, i32* %12, i32 2, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %112, %93
  %140 = load i32*, i32** %8, align 8
  store i32 1, i32* %140, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %139, %88, %59, %50
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_20__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i64 @vble_unpack(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @vble_restore_plane(%struct.TYPE_16__*, %struct.TYPE_19__*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
