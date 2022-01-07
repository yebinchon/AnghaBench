; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_buffer_header_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_buffer_header_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"%s: buffer headers in transit < 0 (%d)\00", align 1
@MMAL_COLLECT_PORT_STATS_ENABLED = common dso_local global i64 0, align 8
@MMAL_CORE_STATS_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmal_port_buffer_header_callback(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %6 = call i64 @IN_TRANSIT_COUNT(%struct.TYPE_18__* %5)
  %7 = icmp sge i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @vcos_verify(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = call i64 @IN_TRANSIT_COUNT(%struct.TYPE_18__* %15)
  %17 = trunc i64 %16 to i32
  %18 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i64, i64* @MMAL_COLLECT_PORT_STATS_ENABLED, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = load i32, i32* @MMAL_CORE_STATS_TX, align 4
  %25 = call i32 @mmal_port_update_port_stats(%struct.TYPE_18__* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = call i32 %33(%struct.TYPE_18__* %34, %struct.TYPE_19__* %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = call i32 @IN_TRANSIT_DECREMENT(%struct.TYPE_18__* %37)
  ret void
}

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i64 @IN_TRANSIT_COUNT(%struct.TYPE_18__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i32) #1

declare dso_local i32 @mmal_port_update_port_stats(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @IN_TRANSIT_DECREMENT(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
