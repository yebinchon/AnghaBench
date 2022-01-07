; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_find_port_to_graph.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_find_port_to_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__**, %struct.TYPE_7__**, %struct.TYPE_7__**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__**, %struct.TYPE_7__**, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_8__*, %struct.TYPE_7__*)* @find_port_to_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @find_port_to_graph(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %44 [
    i32 129, label %17
    i32 128, label %26
    i32 130, label %35
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  store %struct.TYPE_7__** %20, %struct.TYPE_7__*** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %24, align 8
  store %struct.TYPE_7__** %25, %struct.TYPE_7__*** %8, align 8
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %28, align 8
  store %struct.TYPE_7__** %29, %struct.TYPE_7__*** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32* %31, i32** %10, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %33, align 8
  store %struct.TYPE_7__** %34, %struct.TYPE_7__*** %8, align 8
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %37, align 8
  store %struct.TYPE_7__** %38, %struct.TYPE_7__*** %7, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32* %40, i32** %10, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %42, align 8
  store %struct.TYPE_7__** %43, %struct.TYPE_7__*** %8, align 8
  br label %45

44:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %76

45:                                               ; preds = %35, %26, %17
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = icmp eq %struct.TYPE_7__* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %64

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %46

64:                                               ; preds = %59, %46
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %71, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %3, align 8
  br label %76

76:                                               ; preds = %70, %69, %44
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
