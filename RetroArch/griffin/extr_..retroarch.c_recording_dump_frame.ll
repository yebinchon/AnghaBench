; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_recording_dump_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_recording_dump_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.record_video_data*)* }
%struct.record_video_data = type { i32, i32, i32, i32, i8* }
%struct.video_viewport = type { i32, i64, i64, i64, i64, i64 }

@video_driver_record_gpu_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"[recording] %s \0A\00", align 1
@MSG_VIEWPORT_SIZE_CALCULATION_FAILED = common dso_local global i32 0, align 4
@recording_gpu_width = common dso_local global i32 0, align 4
@recording_gpu_height = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"[recording] %s\0A\00", align 1
@MSG_RECORDING_TERMINATED_DUE_TO_RESIZE = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@CMD_EVENT_RECORD_DEINIT = common dso_local global i32 0, align 4
@recording_driver = common dso_local global %struct.TYPE_2__* null, align 8
@recording_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i64, i32)* @recording_dump_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recording_dump_frame(i8* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.record_video_data, align 8
  %12 = alloca %struct.video_viewport, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i64, i64* %9, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load i8*, i8** @video_driver_record_gpu_buffer, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %100

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = call i32 @video_driver_get_viewport_info(%struct.video_viewport* %12)
  %33 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36, %25
  %41 = load i32, i32* @MSG_VIEWPORT_SIZE_CALCULATION_FAILED, align 4
  %42 = call i32 @msg_hash_to_str(i32 %41)
  %43 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 (...) @video_driver_gpu_record_deinit()
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %10, align 4
  call void @recording_dump_frame(i8* %45, i32 %46, i32 %47, i64 %48, i32 %49)
  br label %112

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @recording_gpu_width, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @recording_gpu_height, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @MSG_RECORDING_TERMINATED_DUE_TO_RESIZE, align 4
  %62 = call i32 @msg_hash_to_str(i32 %61)
  %63 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @MSG_RECORDING_TERMINATED_DUE_TO_RESIZE, align 4
  %65 = call i32 @msg_hash_to_str(i32 %64)
  %66 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %67 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %68 = call i32 @runloop_msg_queue_push(i32 %65, i32 1, i32 180, i32 1, i32* null, i32 %66, i32 %67)
  %69 = load i32, i32* @CMD_EVENT_RECORD_DEINIT, align 4
  %70 = call i32 @command_event(i32 %69, i32* null)
  br label %112

71:                                               ; preds = %55
  %72 = load i8*, i8** @video_driver_record_gpu_buffer, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @video_driver_read_viewport(i8* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %112

77:                                               ; preds = %71
  %78 = load i32, i32* @recording_gpu_width, align 4
  %79 = mul nsw i32 %78, 3
  %80 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* @recording_gpu_width, align 4
  %82 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load i64, i64* @recording_gpu_height, align 8
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load i8*, i8** @video_driver_record_gpu_buffer, align 8
  %87 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %88, 1
  %90 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = mul i32 %89, %91
  %93 = zext i32 %92 to i64
  %94 = getelementptr i8, i8* %86, i64 %93
  %95 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 4
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 0, %97
  %99 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 2
  store i32 %98, i32* %99, align 8
  br label %106

100:                                              ; preds = %5
  %101 = load i8*, i8** %6, align 8
  %102 = icmp ne i8* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %77
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recording_driver, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32 (i32, %struct.record_video_data*)*, i32 (i32, %struct.record_video_data*)** %108, align 8
  %110 = load i32, i32* @recording_data, align 4
  %111 = call i32 %109(i32 %110, %struct.record_video_data* %11)
  br label %112

112:                                              ; preds = %106, %76, %60, %40
  ret void
}

declare dso_local i32 @video_driver_get_viewport_info(%struct.video_viewport*) #1

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @video_driver_gpu_record_deinit(...) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i32 @video_driver_read_viewport(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
