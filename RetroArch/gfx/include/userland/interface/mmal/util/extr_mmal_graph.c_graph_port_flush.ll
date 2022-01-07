; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_flush.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_17__*, %struct.TYPE_15__*)* }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @graph_port_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @graph_port_flush(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = call %struct.TYPE_15__* @find_port_from_graph(%struct.TYPE_16__* %14, %struct.TYPE_15__* %15)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %20, i64* %2, align 8
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64 (%struct.TYPE_17__*, %struct.TYPE_15__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_15__*)** %24, align 8
  %26 = icmp ne i64 (%struct.TYPE_17__*, %struct.TYPE_15__*)* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_17__*, %struct.TYPE_15__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_15__*)** %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = call i64 %31(%struct.TYPE_17__* %33, %struct.TYPE_15__* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @MMAL_ENOSYS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %2, align 8
  br label %46

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = call i64 @graph_port_flush_propagate(%struct.TYPE_16__* %43, %struct.TYPE_15__* %44)
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %42, %39, %19
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local %struct.TYPE_15__* @find_port_from_graph(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i64 @graph_port_flush_propagate(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
