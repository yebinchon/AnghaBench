; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_splitter_buffer_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_splitter_buffer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@RAW_OUTPUT_FMT_GRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Failed to write raw buffer data (%d from %d)- aborting\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Received a camera buffer callback with no state\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Unable to return a buffer to the splitter port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*)* @splitter_buffer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @splitter_buffer_callback(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %6, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = icmp ne %struct.TYPE_22__* %14, null
  br i1 %15, label %16, label %81

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %16
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RAW_OUTPUT_FMT_GRAY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %40, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %32, %24, %16
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @vcos_assert(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %50
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %59 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_24__* %58)
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @fwrite(i32 %62, i32 1, i32 %63, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %69 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_24__* %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %57
  br label %80

80:                                               ; preds = %79, %50
  br label %83

81:                                               ; preds = %2
  %82 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %80
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %85 = call i32 @mmal_buffer_header_release(%struct.TYPE_24__* %84)
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %83
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_24__* @mmal_queue_get(i32 %97)
  store %struct.TYPE_24__* %98, %struct.TYPE_24__** %5, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = icmp ne %struct.TYPE_24__* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = call i64 @mmal_port_send_buffer(%struct.TYPE_23__* %102, %struct.TYPE_24__* %103)
  store i64 %104, i64* %9, align 8
  br label %105

105:                                              ; preds = %101, %90
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %107 = icmp ne %struct.TYPE_24__* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* @MMAL_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %105
  %113 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114, %83
  ret void
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_24__*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_24__*) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
