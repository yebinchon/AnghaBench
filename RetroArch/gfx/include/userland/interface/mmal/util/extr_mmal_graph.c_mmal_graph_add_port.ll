; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_graph_add_port.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_graph_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__** }

@.str = private unnamed_addr constant [24 x i8] c"graph: %p, port: %s(%p)\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@GRAPH_CONNECTIONS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no space for port %s\00", align 1
@MMAL_ENOSPC = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_graph_add_port(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ %17, %14 ], [ 0, %18 ]
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %20, %struct.TYPE_5__* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %49 [
    i32 129, label %31
    i32 128, label %37
    i32 130, label %43
  ]

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  store %struct.TYPE_5__** %34, %struct.TYPE_5__*** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32* %36, i32** %8, align 8
  br label %51

37:                                               ; preds = %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %39, align 8
  store %struct.TYPE_5__** %40, %struct.TYPE_5__*** %7, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* %42, i32** %8, align 8
  br label %51

43:                                               ; preds = %27
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  store %struct.TYPE_5__** %46, %struct.TYPE_5__*** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32* %48, i32** %8, align 8
  br label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %71

51:                                               ; preds = %43, %37, %31
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GRAPH_CONNECTIONS_MAX, align 4
  %55 = icmp uge i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @MMAL_ENOSPC, align 4
  store i32 %61, i32* %3, align 4
  br label %71

62:                                               ; preds = %51
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %64, i64 %68
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %69, align 8
  %70 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %56, %49, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @LOG_TRACE(i8*, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
