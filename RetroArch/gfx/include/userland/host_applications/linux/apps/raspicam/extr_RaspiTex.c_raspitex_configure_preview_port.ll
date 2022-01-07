; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTex.c_raspitex_configure_preview_port.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTex.c_raspitex_configure_preview_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.MMAL_PORT_USERDATA_T*, %struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32 }
%struct.MMAL_PORT_USERDATA_T = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s port %p\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to enable zero copy on camera preview port\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"camera viewfinder format couldn't be set\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Creating buffer pool for GL renderer num %d size %d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Error allocating pool\00", align 1
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Error allocating queue\00", align 1
@preview_output_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to camera preview port\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspitex_configure_preview_port(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %6 = load i32, i32* @VCOS_FUNCTION, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.TYPE_12__* %7)
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  %11 = load i32, i32* @MMAL_TRUE, align 4
  %12 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_12__* %9, i32 %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MMAL_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @vcos_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %89

18:                                               ; preds = %2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = call i64 @mmal_port_format_commit(%struct.TYPE_12__* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @MMAL_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %89

26:                                               ; preds = %18
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %42, %struct.TYPE_12__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = call i32 @mmal_port_pool_create(%struct.TYPE_12__* %47, i32 %50, %struct.TYPE_12__* %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %26
  %62 = call i32 @vcos_log_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %63, i64* %5, align 8
  br label %89

64:                                               ; preds = %26
  %65 = call i32 (...) @mmal_queue_create()
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = call i32 @vcos_log_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %74, i64* %5, align 8
  br label %89

75:                                               ; preds = %64
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = bitcast %struct.TYPE_11__* %76 to %struct.MMAL_PORT_USERDATA_T*
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store %struct.MMAL_PORT_USERDATA_T* %77, %struct.MMAL_PORT_USERDATA_T** %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = load i32, i32* @preview_output_cb, align 4
  %82 = call i64 @mmal_port_enable(%struct.TYPE_12__* %80, i32 %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @MMAL_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = call i32 @vcos_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %89

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %86, %72, %61, %24, %16
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @MMAL_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 -1
  ret i32 %94
}

declare dso_local i32 @vcos_log_trace(i8*, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @mmal_port_parameter_set_boolean(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @vcos_log_error(i8*) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_12__*) #1

declare dso_local i32 @mmal_port_pool_create(%struct.TYPE_12__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @mmal_queue_create(...) #1

declare dso_local i64 @mmal_port_enable(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
