; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_process_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_process_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*)* }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_23__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64 }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"%s(%p) could not send buffer to %s(%p) (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)* @graph_process_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_process_buffer(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = load i64 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*)** %10, align 8
  %12 = icmp ne i64 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*)* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i64 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*)** %16, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = call i64 %17(%struct.TYPE_22__* %19, %struct.TYPE_20__* %20, %struct.TYPE_21__* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MMAL_ENOSYS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %78

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = call i32 @graph_port_event_handler(%struct.TYPE_20__* %34, %struct.TYPE_18__* %37, %struct.TYPE_21__* %38)
  br label %78

40:                                               ; preds = %28
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = call i64 @mmal_port_send_buffer(%struct.TYPE_23__* %43, %struct.TYPE_21__* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @MMAL_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %40
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @mmal_status_to_string(i64 %66)
  %68 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54, %struct.TYPE_18__* %57, i32 %62, %struct.TYPE_23__* %65, i32 %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = call i32 @mmal_buffer_header_release(%struct.TYPE_21__* %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @mmal_event_error_send(i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %26, %33, %49, %40
  ret void
}

declare dso_local i32 @graph_port_event_handler(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, %struct.TYPE_18__*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @mmal_status_to_string(i64) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_21__*) #1

declare dso_local i32 @mmal_event_error_send(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
