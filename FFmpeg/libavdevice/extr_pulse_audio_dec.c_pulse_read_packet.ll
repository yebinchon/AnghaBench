; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_dec.c_pulse_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_dec.c_pulse_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@unlock_and_fail = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@DEFAULT_CODEC_ID = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pa_stream_get_latency() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @pulse_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_read_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  store i8* null, i8** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pa_threaded_mainloop_lock(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @unlock_and_fail, align 4
  %27 = call i32 @CHECK_DEAD_GOTO(%struct.TYPE_9__* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %69, %2
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %70

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pa_stream_peek(i32 %35, i8** %9, i64* %8)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @unlock_and_fail, align 4
  %42 = call i32 @CHECK_SUCCESS_GOTO(i32 %37, i32 %40, i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = icmp ule i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pa_threaded_mainloop_wait(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @unlock_and_fail, align 4
  %53 = call i32 @CHECK_DEAD_GOTO(%struct.TYPE_9__* %50, i32 %51, i32 %52)
  br label %69

54:                                               ; preds = %32
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pa_stream_drop(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* @unlock_and_fail, align 4
  %67 = call i32 @CHECK_SUCCESS_GOTO(i32 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %54
  br label %69

69:                                               ; preds = %68, %45
  br label %28

70:                                               ; preds = %28
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @av_new_packet(%struct.TYPE_10__* %71, i64 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %7, align 4
  br label %171

78:                                               ; preds = %70
  %79 = call i32 (...) @av_gettime()
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pa_stream_update_timing_info(i32 %82, i32* null, i32* null)
  %84 = call i32 @pa_operation_unref(i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @pa_stream_get_latency(i32 %87, i64* %11, i32* %12)
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %152

90:                                               ; preds = %78
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @DEFAULT_CODEC_ID, align 4
  %98 = sext i32 %97 to i64
  br label %103

99:                                               ; preds = %90
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i64 [ %98, %96 ], [ %102, %99 ]
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @av_get_bits_per_sample(i32 %106)
  %108 = ashr i32 %107, 3
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %108, %111
  store i32 %112, i32* %15, align 4
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = udiv i64 %113, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %103
  %121 = load i64, i64* %11, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %10, align 4
  br label %132

126:                                              ; preds = %103
  %127 = load i64, i64* %11, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ff_timefilter_update(i32 %140, i32 %141, i32 %144)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %132
  %149 = load i32, i32* %16, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %156

152:                                              ; preds = %78
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = load i32, i32* @AV_LOG_WARNING, align 4
  %155 = call i32 @av_log(%struct.TYPE_11__* %153, i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %156

156:                                              ; preds = %152, %148
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %9, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @memcpy(i32 %159, i8* %160, i64 %161)
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @pa_stream_drop(i32 %165)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @pa_threaded_mainloop_unlock(i32 %169)
  store i32 0, i32* %3, align 4
  br label %177

171:                                              ; preds = %75
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @pa_threaded_mainloop_unlock(i32 %174)
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %171, %156
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @CHECK_DEAD_GOTO(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @pa_stream_peek(i32, i8**, i64*) #1

declare dso_local i32 @CHECK_SUCCESS_GOTO(i32, i32, i32) #1

declare dso_local i32 @pa_threaded_mainloop_wait(i32) #1

declare dso_local i32 @pa_stream_drop(i32) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_gettime(...) #1

declare dso_local i32 @pa_operation_unref(i32) #1

declare dso_local i32 @pa_stream_update_timing_info(i32, i32*, i32*) #1

declare dso_local i64 @pa_stream_get_latency(i32, i64*, i32*) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @ff_timefilter_update(i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
