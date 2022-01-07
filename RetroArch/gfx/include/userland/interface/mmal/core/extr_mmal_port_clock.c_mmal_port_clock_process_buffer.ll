; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port_clock.c_mmal_port_clock_process_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port_clock.c_mmal_port_clock_process_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)*, i32 }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_22__*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_CLOCK_EVENT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid buffer length %d expected %d\00", align 1
@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_CLOCK_EVENT_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer corrupt (magic %4.4s)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"port %s id %4.4s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid event %4.4s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_22__*)* @mmal_port_clock_process_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_port_clock_process_buffer(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %6, align 8
  %14 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @MMAL_CLOCK_EVENT_INVALID, align 4
  call void @MMAL_CLOCK_EVENT_INIT(%struct.TYPE_21__* sret %8, i32 %15)
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 48
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i64 48)
  %26 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %26, i64* %3, align 8
  br label %135

27:                                               ; preds = %2
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_22__* %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(%struct.TYPE_21__* %8, i32 %32, i32 48)
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_22__* %34)
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MMAL_CLOCK_EVENT_MAGIC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %42 = bitcast i64* %41 to i8*
  %43 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_19__* %46, %struct.TYPE_22__* %47)
  %49 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %49, i64* %3, align 8
  br label %135

50:                                               ; preds = %27
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %55 = bitcast i32* %54 to i8*
  %56 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %53, i8* %55)
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %105 [
    i32 135, label %59
    i32 129, label %67
    i32 130, label %75
    i32 128, label %83
    i32 134, label %90
    i32 131, label %97
    i32 133, label %104
    i32 132, label %104
  ]

59:                                               ; preds = %50
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @mmal_clock_active_set(i32 %62, i32 %65)
  store i64 %66, i64* %7, align 8
  br label %110

67:                                               ; preds = %50
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @mmal_clock_media_time_set(i32 %70, i32 %73)
  store i64 %74, i64* %7, align 8
  br label %110

75:                                               ; preds = %50
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @mmal_clock_scale_set(i32 %78, i32 %81)
  store i64 %82, i64* %7, align 8
  br label %110

83:                                               ; preds = %50
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = call i64 @mmal_clock_update_threshold_set(i32 %86, i32* %88)
  store i64 %89, i64* %7, align 8
  br label %110

90:                                               ; preds = %50
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = call i64 @mmal_clock_discont_threshold_set(i32 %93, i32* %95)
  store i64 %96, i64* %7, align 8
  br label %110

97:                                               ; preds = %50
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = call i64 @mmal_clock_request_threshold_set(i32 %100, i32* %102)
  store i64 %103, i64* %7, align 8
  br label %110

104:                                              ; preds = %50, %50
  br label %110

105:                                              ; preds = %50
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %107 = bitcast i32* %106 to i8*
  %108 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  %109 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %105, %104, %97, %90, %83, %75, %67, %59
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)** %112, align 8
  %114 = icmp ne i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @MMAL_SUCCESS, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)** %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = call i32 %124(%struct.TYPE_19__* %125, %struct.TYPE_21__* %8)
  br label %133

127:                                              ; preds = %115, %110
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_19__* %130, %struct.TYPE_22__* %131)
  br label %133

133:                                              ; preds = %127, %119
  %134 = load i64, i64* %7, align 8
  store i64 %134, i64* %3, align 8
  br label %135

135:                                              ; preds = %133, %40, %21
  %136 = load i64, i64* %3, align 8
  ret i64 %136
}

declare dso_local void @MMAL_CLOCK_EVENT_INIT(%struct.TYPE_21__* sret, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_22__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_22__*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @LOG_TRACE(i8*, i32, i8*) #1

declare dso_local i64 @mmal_clock_active_set(i32, i32) #1

declare dso_local i64 @mmal_clock_media_time_set(i32, i32) #1

declare dso_local i64 @mmal_clock_scale_set(i32, i32) #1

declare dso_local i64 @mmal_clock_update_threshold_set(i32, i32*) #1

declare dso_local i64 @mmal_clock_discont_threshold_set(i32, i32*) #1

declare dso_local i64 @mmal_clock_request_threshold_set(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
