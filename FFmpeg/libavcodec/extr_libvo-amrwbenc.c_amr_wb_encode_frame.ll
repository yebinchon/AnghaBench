; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvo-amrwbenc.c_amr_wb_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvo-amrwbenc.c_amr_wb_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i64* }

@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error encoding frame\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @amr_wb_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_wb_encode_frame(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %10, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %26 = call i32 @ff_alloc_packet2(%struct.TYPE_15__* %23, %struct.TYPE_13__* %24, i32 %25, i32 0)
  store i32 %26, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %101

30:                                               ; preds = %4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = call i32 @get_wb_bitrate_mode(i64 %41, %struct.TYPE_15__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %38, %30
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @E_IF_encode(i32 %54, i32 %57, i32* %58, i32 %61, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68, %51
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 @av_log(%struct.TYPE_15__* %73, i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %5, align 4
  br label %101

78:                                               ; preds = %68
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @ff_samples_to_time_base(%struct.TYPE_15__* %88, i32 %91)
  %93 = sub nsw i64 %87, %92
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %84, %78
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i32*, i32** %9, align 8
  store i32 1, i32* %100, align 4
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %96, %72, %28
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @get_wb_bitrate_mode(i64, %struct.TYPE_15__*) #1

declare dso_local i32 @E_IF_encode(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_samples_to_time_base(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
