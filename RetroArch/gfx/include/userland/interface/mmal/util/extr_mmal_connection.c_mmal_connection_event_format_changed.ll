; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_connection.c_mmal_connection_event_format_changed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_connection.c_mmal_connection_event_format_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p, %s\00", align 1
@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_PORT_CAPABILITY_SUPPORTS_EVENT_FORMAT_CHANGE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"format commit failed on port %s(%p) (%i)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"buffer send failed on port %s(%p) (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_connection_event_format_changed(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %8, i32 %11)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MMAL_EVENT_FORMAT_CHANGED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %123

20:                                               ; preds = %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = call %struct.TYPE_16__* @mmal_event_format_changed_get(%struct.TYPE_18__* %21)
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = icmp ne %struct.TYPE_16__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %123

27:                                               ; preds = %20
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MMAL_PORT_CAPABILITY_SUPPORTS_EVENT_FORMAT_CHANGE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %117

36:                                               ; preds = %27
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %39, %44
  br i1 %45, label %46, label %117

46:                                               ; preds = %36
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %49, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %46
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mmal_format_full_copy(i32 %61, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MMAL_SUCCESS, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = call i32 @mmal_port_format_commit(%struct.TYPE_19__* %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %69, %56
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @MMAL_SUCCESS, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %83, %struct.TYPE_19__* %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %123

90:                                               ; preds = %74
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = call i32 @mmal_buffer_header_acquire(%struct.TYPE_18__* %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = call i32 @mmal_port_send_buffer(%struct.TYPE_19__* %95, %struct.TYPE_18__* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MMAL_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %90
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %106, %struct.TYPE_19__* %109, i32 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = call i32 @mmal_buffer_header_release(%struct.TYPE_18__* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %123

115:                                              ; preds = %90
  %116 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %116, i32* %3, align 4
  br label %123

117:                                              ; preds = %46, %36, %27
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @mmal_connection_reconfigure(%struct.TYPE_17__* %118, i32 %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %115, %101, %78, %25, %18
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @mmal_event_format_changed_get(%struct.TYPE_18__*) #1

declare dso_local i32 @mmal_format_full_copy(i32, i32) #1

declare dso_local i32 @mmal_port_format_commit(%struct.TYPE_19__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @mmal_buffer_header_acquire(%struct.TYPE_18__*) #1

declare dso_local i32 @mmal_port_send_buffer(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_18__*) #1

declare dso_local i32 @mmal_connection_reconfigure(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
