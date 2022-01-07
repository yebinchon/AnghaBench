; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_connected_output_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_connected_output_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"buffer %p from connected output port %p: data %p, alloc_size %u, length %u\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"format commit failed on port %s (%i)\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s could not send buffer on port %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_20__*)* @mmal_port_connected_output_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmal_port_connected_output_cb(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %15, %struct.TYPE_18__* %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %2
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %33 = call %struct.TYPE_19__* @mmal_event_format_changed_get(%struct.TYPE_20__* %32)
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %7, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = icmp ne %struct.TYPE_19__* %34, null
  br i1 %35, label %36, label %81

36:                                               ; preds = %31
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @mmal_format_full_copy(i32 %39, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @MMAL_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = call i64 @mmal_port_format_commit(%struct.TYPE_18__* %48)
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @MMAL_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 (i8*, i32, i64, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @MMAL_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = call i64 @mmal_port_send_buffer(%struct.TYPE_18__* %65, %struct.TYPE_20__* %66)
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @MMAL_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @mmal_event_error_send(i32 %75, i64 %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = call i32 @mmal_buffer_header_release(%struct.TYPE_20__* %78)
  br label %80

80:                                               ; preds = %72, %68
  br label %114

81:                                               ; preds = %31
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = call i32 @mmal_buffer_header_release(%struct.TYPE_20__* %82)
  br label %114

84:                                               ; preds = %2
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = call i64 @mmal_port_send_buffer(%struct.TYPE_18__* %90, %struct.TYPE_20__* %91)
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @MMAL_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @mmal_status_to_string(i64 %104)
  %106 = call i32 (i8*, i32, i64, ...) @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %99, i64 %103, i32 %105)
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = call i32 @mmal_buffer_header_release(%struct.TYPE_20__* %107)
  br label %109

109:                                              ; preds = %96, %89
  br label %113

110:                                              ; preds = %84
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = call i32 @mmal_buffer_header_release(%struct.TYPE_20__* %111)
  br label %113

113:                                              ; preds = %110, %109
  br label %114

114:                                              ; preds = %80, %113, %81
  ret void
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @mmal_event_format_changed_get(%struct.TYPE_20__*) #1

declare dso_local i64 @mmal_format_full_copy(i32, i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_18__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i64, ...) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mmal_event_error_send(i32, i64) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_20__*) #1

declare dso_local i32 @mmal_status_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
