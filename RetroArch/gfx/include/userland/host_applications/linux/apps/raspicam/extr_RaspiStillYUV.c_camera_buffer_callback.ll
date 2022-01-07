; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_camera_buffer_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_camera_buffer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Unable to write buffer to file - aborting %d vs %d\00", align 1
@MMAL_BUFFER_HEADER_FLAG_FRAME_END = common dso_local global i32 0, align 4
@MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Received a camera still buffer callback with no state\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Unable to return the buffer to the camera still port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*)* @camera_buffer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camera_buffer_callback(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %6, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = icmp ne %struct.TYPE_22__* %15, null
  br i1 %16, label %17, label %94

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %17
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %38, %46
  %48 = call i32 @vcos_min(i32 %30, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %27, %17
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %59 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_24__* %58)
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @fwrite(i32 %62, i32 1, i32 %63, i64 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %69 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_24__* %68)
  br label %70

70:                                               ; preds = %57, %52, %49
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %75, %70
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_FRAME_END, align 4
  %88 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %83
  br label %96

94:                                               ; preds = %2
  %95 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %93
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = call i32 @mmal_buffer_header_release(%struct.TYPE_24__* %97)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %96
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.TYPE_24__* @mmal_queue_get(i32 %110)
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %10, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %113 = icmp ne %struct.TYPE_24__* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %117 = call i64 @mmal_port_send_buffer(%struct.TYPE_23__* %115, %struct.TYPE_24__* %116)
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %114, %103
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %120 = icmp ne %struct.TYPE_24__* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* @MMAL_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121, %118
  %126 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %121
  br label %128

128:                                              ; preds = %127, %96
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = call i32 @vcos_semaphore_post(i32* %133)
  br label %135

135:                                              ; preds = %131, %128
  ret void
}

declare dso_local i32 @vcos_min(i32, i32) #1

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_24__*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i64) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_24__*) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
