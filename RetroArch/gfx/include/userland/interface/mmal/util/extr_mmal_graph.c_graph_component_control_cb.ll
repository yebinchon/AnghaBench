; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_component_control_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_component_control_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_18__*)* }

@.str = private unnamed_addr constant [16 x i8] c"%s(%p),%p,%4.4s\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_18__*)* @graph_component_control_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_component_control_cb(%struct.TYPE_15__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i8*
  %25 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.TYPE_15__* %20, %struct.TYPE_18__* %21, i8* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64 (%struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_18__*)** %28, align 8
  %30 = icmp ne i64 (%struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_18__*)* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_18__*)** %34, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = call i64 %35(%struct.TYPE_19__* %37, %struct.TYPE_15__* %38, %struct.TYPE_18__* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @MMAL_ENOSYS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %52

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = call i32 @mmal_port_event_send(i32 %49, %struct.TYPE_18__* %50)
  br label %52

52:                                               ; preds = %46, %44
  ret void
}

declare dso_local i32 @LOG_TRACE(i8*, i32, %struct.TYPE_15__*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @mmal_port_event_send(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
