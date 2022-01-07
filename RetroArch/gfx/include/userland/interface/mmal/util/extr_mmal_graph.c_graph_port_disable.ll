; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_disable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 (%struct.TYPE_18__*, %struct.TYPE_16__*)* }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*)* @graph_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @graph_port_disable(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = call %struct.TYPE_16__* @find_port_from_graph(%struct.TYPE_17__* %21, %struct.TYPE_16__* %22)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %6, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %27, i64* %2, align 8
  br label %73

28:                                               ; preds = %1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i64 (%struct.TYPE_18__*, %struct.TYPE_16__*)*, i64 (%struct.TYPE_18__*, %struct.TYPE_16__*)** %31, align 8
  %33 = icmp ne i64 (%struct.TYPE_18__*, %struct.TYPE_16__*)* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_18__*, %struct.TYPE_16__*)*, i64 (%struct.TYPE_18__*, %struct.TYPE_16__*)** %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = call i64 %38(%struct.TYPE_18__* %40, %struct.TYPE_16__* %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @MMAL_ENOSYS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %2, align 8
  br label %73

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %28
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54, %49
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = call i64 @graph_port_state_propagate(%struct.TYPE_17__* %61, %struct.TYPE_16__* %62, i32 0)
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @MMAL_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %2, align 8
  br label %73

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %54
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = call i64 @mmal_port_disable(%struct.TYPE_16__* %71)
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %70, %67, %46, %26
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local %struct.TYPE_16__* @find_port_from_graph(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @graph_port_state_propagate(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @mmal_port_disable(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
