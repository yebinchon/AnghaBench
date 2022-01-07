; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_common.c_ff_pulse_audio_get_devices.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_common.c_ff_pulse_audio_get_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_10__*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Query devices\00", align 1
@pulse_audio_sink_device_cb = common dso_local global i32 0, align 4
@pulse_audio_source_device_cb = common dso_local global i32 0, align 4
@PA_OPERATION_RUNNING = common dso_local global i32 0, align 4
@PA_OPERATION_DONE = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i8* null, align 8
@pulse_server_info_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_pulse_audio_get_devices(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %18, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %136

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @ff_pulse_audio_connect_context(i32** %8, i32** %10, i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = icmp slt i64 %30, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %128

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* @pulse_audio_sink_device_cb, align 4
  %40 = call i32* @pa_context_get_sink_info_list(i32* %38, i32 %39, %struct.TYPE_9__* %12)
  store i32* %40, i32** %9, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @pulse_audio_source_device_cb, align 4
  %44 = call i32* @pa_context_get_source_info_list(i32* %42, i32 %43, %struct.TYPE_9__* %12)
  store i32* %44, i32** %9, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %51, %45
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @pa_operation_get_state(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @PA_OPERATION_RUNNING, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @pa_mainloop_iterate(i32* %52, i32 1, i32* null)
  br label %46

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @PA_OPERATION_DONE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** @AVERROR_EXTERNAL, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @pa_operation_unref(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %128

69:                                               ; preds = %62
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @pulse_server_info_cb, align 4
  %72 = call i32* @pa_context_get_server_info(i32* %70, i32 %71, %struct.TYPE_9__* %12)
  store i32* %72, i32** %9, align 8
  br label %73

73:                                               ; preds = %78, %69
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @pa_operation_get_state(i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @PA_OPERATION_RUNNING, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @pa_mainloop_iterate(i32* %79, i32 1, i32* null)
  br label %73

81:                                               ; preds = %73
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @PA_OPERATION_DONE, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i8*, i8** @AVERROR_EXTERNAL, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @pa_operation_unref(i32* %90)
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %128

96:                                               ; preds = %89
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  store i32 -1, i32* %98, align 4
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %124, %96
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %99
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %108, i64 %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @strcmp(i32 %114, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %105
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %127

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %99

127:                                              ; preds = %119, %99
  br label %128

128:                                              ; preds = %127, %95, %68, %33
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @av_free(i32 %130)
  %132 = call i32 @ff_pulse_audio_disconnect_context(i32** %8, i32** %10)
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %128, %21
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @ff_pulse_audio_connect_context(i32**, i32**, i8*, i8*) #2

declare dso_local i32* @pa_context_get_sink_info_list(i32*, i32, %struct.TYPE_9__*) #2

declare dso_local i32* @pa_context_get_source_info_list(i32*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @pa_operation_get_state(i32*) #2

declare dso_local i32 @pa_mainloop_iterate(i32*, i32, i32*) #2

declare dso_local i32 @pa_operation_unref(i32*) #2

declare dso_local i32* @pa_context_get_server_info(i32*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i32 @av_free(i32) #2

declare dso_local i32 @ff_pulse_audio_disconnect_context(i32**, i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
