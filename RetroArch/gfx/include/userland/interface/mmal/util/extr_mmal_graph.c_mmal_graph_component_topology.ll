; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_graph_component_topology.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_graph_component_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64*, %struct.TYPE_6__** }

@.str = private unnamed_addr constant [29 x i8] c"graph: %p, component: %s(%p)\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_GRAPH_TOPOLOGY_STRAIGHT = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_graph_component_topology(i32* %0, %struct.TYPE_6__* %1, i64 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %16, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 @MMAL_PARAM_UNUSED(i32 %21)
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @MMAL_PARAM_UNUSED(i32 %23)
  %25 = load i32*, i32** %14, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 @MMAL_PARAM_UNUSED(i32 %26)
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @MMAL_PARAM_UNUSED(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %7
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %7
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 0, %37 ]
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %30, i32 %39, %struct.TYPE_6__* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %45, i32* %8, align 4
  br label %91

46:                                               ; preds = %38
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %56, align 8
  %58 = load i32, i32* %17, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = icmp eq %struct.TYPE_6__* %54, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %17, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %47

68:                                               ; preds = %63, %47
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %75, i32* %8, align 4
  br label %91

76:                                               ; preds = %68
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @MMAL_GRAPH_TOPOLOGY_STRAIGHT, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @MMAL_ENOSYS, align 4
  store i32 %81, i32* %8, align 4
  br label %91

82:                                               ; preds = %76
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %83, i64* %89, align 8
  %90 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %82, %80, %74, %44
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i32) #1

declare dso_local i32 @LOG_TRACE(i8*, i32*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
