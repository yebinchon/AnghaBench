; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_encoder_buffer_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_encoder_buffer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unable to write buffer to file - aborting\00", align 1
@MMAL_BUFFER_HEADER_FLAG_FRAME_END = common dso_local global i32 0, align 4
@MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Received a encoder buffer callback with no state\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Unable to return a buffer to the encoder port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*)* @encoder_buffer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encoder_buffer_callback(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %63

16:                                               ; preds = %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %16
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_18__* %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @fwrite(i32 %34, i32 1, i32 %37, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_18__* %42)
  br label %44

44:                                               ; preds = %29, %24, %16
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @vcos_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_FRAME_END, align 4
  %57 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %52
  br label %65

63:                                               ; preds = %2
  %64 = call i32 @vcos_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %62
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = call i32 @mmal_buffer_header_release(%struct.TYPE_18__* %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %65
  %73 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %73, i64* %8, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_18__* @mmal_queue_get(i32 %80)
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %9, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %83 = icmp ne %struct.TYPE_18__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %87 = call i64 @mmal_port_send_buffer(%struct.TYPE_17__* %85, %struct.TYPE_18__* %86)
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %84, %72
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %90 = icmp ne %struct.TYPE_18__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @MMAL_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %88
  %96 = call i32 @vcos_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = call i32 @vcos_semaphore_post(i32* %103)
  br label %105

105:                                              ; preds = %101, %98
  ret void
}

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_18__*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i64) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @vcos_log_error(i8*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
