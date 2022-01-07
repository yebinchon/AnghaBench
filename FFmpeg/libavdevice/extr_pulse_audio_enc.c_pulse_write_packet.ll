; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__**, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_17__ = type { i64, i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PulseAudio stream is in invalid state.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@PA_SEEK_RELATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pa_stream_write failed: %s\0A\00", align 1
@AV_DEV_TO_APP_BUFFER_WRITABLE = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @pulse_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_write_packet(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = call i32 @pulse_flash_stream(%struct.TYPE_14__* %18)
  store i32 %19, i32* %3, align 4
  br label %171

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %85

45:                                               ; preds = %32
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %48, i64 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %52, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @av_get_bytes_per_sample(i32 %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = mul nsw i64 %66, %71
  %73 = sdiv i64 %60, %72
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = bitcast %struct.TYPE_16__* %10 to i64*
  %79 = load i64, i64* %78, align 4
  %80 = call i64 @av_rescale_q(i64 %74, i64 %79, i32 %77)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %45, %37
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pa_threaded_mainloop_lock(i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pa_stream_get_state(i32 %92)
  %94 = call i32 @PA_STREAM_IS_GOOD(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %85
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %97, i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %165

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %127, %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @pa_stream_writable_size(i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %101
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @pa_threaded_mainloop_unlock(i32 %118)
  %120 = load i32, i32* @EAGAIN, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %3, align 4
  br label %171

122:                                              ; preds = %110
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pa_threaded_mainloop_wait(i32 %125)
  br label %127

127:                                              ; preds = %122
  br label %101

128:                                              ; preds = %101
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @PA_SEEK_RELATIVE, align 4
  %139 = call i32 @pa_stream_write(i32 %131, i32 %134, i64 %137, i32* null, i32 0, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %128
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %143 = load i32, i32* @AV_LOG_ERROR, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @pa_strerror(i32 %144)
  %146 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %142, i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %165

147:                                              ; preds = %128
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @pa_stream_writable_size(i32 %150)
  store i64 %151, i64* %8, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sge i64 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = load i32, i32* @AV_DEV_TO_APP_BUFFER_WRITABLE, align 4
  %159 = call i32 @avdevice_dev_to_app_control_message(%struct.TYPE_18__* %157, i32 %158, i64* %8, i32 8)
  br label %160

160:                                              ; preds = %156, %147
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @pa_threaded_mainloop_unlock(i32 %163)
  store i32 0, i32* %3, align 4
  br label %171

165:                                              ; preds = %141, %96
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @pa_threaded_mainloop_unlock(i32 %168)
  %170 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %165, %160, %115, %17
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @pulse_flash_stream(%struct.TYPE_14__*) #1

declare dso_local i64 @av_get_bytes_per_sample(i32) #1

declare dso_local i64 @av_rescale_q(i64, i64, i32) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @PA_STREAM_IS_GOOD(i32) #1

declare dso_local i32 @pa_stream_get_state(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i64 @pa_stream_writable_size(i32) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @pa_threaded_mainloop_wait(i32) #1

declare dso_local i32 @pa_stream_write(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @pa_strerror(i32) #1

declare dso_local i32 @avdevice_dev_to_app_control_message(%struct.TYPE_18__*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
