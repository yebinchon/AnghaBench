; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_connection_start.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_connection_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_CLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* @mmal_port_connection_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmal_port_connection_start(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi %struct.TYPE_11__* [ %15, %14 ], [ %17, %16 ]
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  br label %29

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi %struct.TYPE_11__* [ %26, %25 ], [ %28, %27 ]
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %6, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  br label %55

47:                                               ; preds = %29
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  br label %55

55:                                               ; preds = %47, %39
  %56 = phi i32* [ %46, %39 ], [ %54, %47 ]
  store i32* %56, i32** %7, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MMAL_PORT_TYPE_CLOCK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MMAL_PORT_TYPE_CLOCK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @mmal_port_populate_clock_ports(%struct.TYPE_11__* %69, %struct.TYPE_11__* %70, i32* %71)
  store i32 %72, i32* %8, align 4
  br label %77

73:                                               ; preds = %62, %55
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @mmal_port_populate_from_pool(%struct.TYPE_11__* %74, i32* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @mmal_port_populate_clock_ports(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @mmal_port_populate_from_pool(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
