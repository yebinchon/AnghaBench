; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_fill_input_port.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_fill_input_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_19__*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_19__*, i32, i32, i32, i32, i64 }

@MMAL_BUFFER_HEADER_FLAG_FRAME_END = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"MMAL error %d when sending input\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @ffmmal_fill_input_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmmal_fill_input_port(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %4, align 8
  br label %11

11:                                               ; preds = %126, %1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = icmp ne %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %127

16:                                               ; preds = %11
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_17__* @mmal_queue_get(i32 %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %128

26:                                               ; preds = %16
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %6, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i32 @mmal_buffer_header_reset(%struct.TYPE_17__* %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %61, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %66, i64 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  store %struct.TYPE_19__* %75, %struct.TYPE_19__** %77, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = icmp eq %struct.TYPE_19__* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %26
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %85, align 8
  br label %86

86:                                               ; preds = %83, %26
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %91, i64 0
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = call i64 @mmal_port_send_buffer(%struct.TYPE_21__* %93, %struct.TYPE_17__* %94)
  store i64 %95, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %86
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = call i32 @mmal_buffer_header_release(%struct.TYPE_17__* %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = call i32 @av_buffer_unref(i32* %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_FRAME_END, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %97
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = call i32 @atomic_fetch_add(i32* %111, i32 -1)
  br label %113

113:                                              ; preds = %109, %97
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = call i32 @av_free(%struct.TYPE_19__* %114)
  br label %116

116:                                              ; preds = %113, %86
  %117 = load i64, i64* %7, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = load i64, i64* %7, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @av_log(%struct.TYPE_20__* %120, i32 %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %125, i32* %2, align 4
  br label %128

126:                                              ; preds = %116
  br label %11

127:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %119, %25
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_17__* @mmal_queue_get(i32) #1

declare dso_local i32 @mmal_buffer_header_reset(%struct.TYPE_17__*) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_21__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_17__*) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_19__*) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
