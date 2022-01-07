; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_payload_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_payload_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*)* }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*)* @graph_port_payload_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_port_payload_free(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = call %struct.TYPE_14__* @find_port_from_graph(%struct.TYPE_15__* %21, %struct.TYPE_14__* %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %7, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = icmp ne %struct.TYPE_14__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*)*, i64 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*)** %30, align 8
  %32 = icmp ne i64 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*)* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*)*, i64 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*)** %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 %37(%struct.TYPE_16__* %39, %struct.TYPE_14__* %40, i32* %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @MMAL_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %52

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @mmal_port_payload_free(%struct.TYPE_14__* %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %46, %26
  ret void
}

declare dso_local %struct.TYPE_14__* @find_port_from_graph(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @mmal_port_payload_free(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
