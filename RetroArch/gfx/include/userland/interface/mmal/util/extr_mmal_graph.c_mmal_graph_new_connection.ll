; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_graph_new_connection.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_graph_new_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32** }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_CLOCK = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"graph: %p, out: %s(%p), in: %s(%p), flags %x, connection: %p\00", align 1
@GRAPH_CONNECTIONS_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"no space for connection %s/%s\00", align 1
@MMAL_ENOSPC = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_graph_new_connection(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i64 %3, i32** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32** %4, i32*** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %12, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %5
  %23 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %23, i64* %6, align 8
  br label %115

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MMAL_PORT_TYPE_CLOCK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MMAL_PORT_TYPE_CLOCK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %37, i64* %6, align 8
  br label %115

38:                                               ; preds = %30, %24
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MMAL_PORT_TYPE_CLOCK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %44
  %57 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %57, i64* %6, align 8
  br label %115

58:                                               ; preds = %50, %38
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32**, i32*** %11, align 8
  %71 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32* %59, i32 %62, %struct.TYPE_9__* %63, i32 %66, %struct.TYPE_9__* %67, i32 %69, i32** %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @GRAPH_CONNECTIONS_MAX, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %58
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83)
  %85 = load i64, i64* @MMAL_ENOSPC, align 8
  store i64 %85, i64* %6, align 8
  br label %115

86:                                               ; preds = %58
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @mmal_connection_create(i32** %13, %struct.TYPE_9__* %87, %struct.TYPE_9__* %88, i64 %89)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @MMAL_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %6, align 8
  br label %115

96:                                               ; preds = %86
  %97 = load i32*, i32** %13, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = getelementptr inbounds i32*, i32** %100, i64 %103
  store i32* %97, i32** %105, align 8
  %106 = load i32**, i32*** %11, align 8
  %107 = icmp ne i32** %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %96
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @mmal_connection_acquire(i32* %109)
  %111 = load i32*, i32** %13, align 8
  %112 = load i32**, i32*** %11, align 8
  store i32* %111, i32** %112, align 8
  br label %113

113:                                              ; preds = %108, %96
  %114 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %113, %94, %77, %56, %36, %22
  %116 = load i64, i64* %6, align 8
  ret i64 %116
}

declare dso_local i32 @LOG_TRACE(i8*, i32*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, i32, i32**) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i32) #1

declare dso_local i64 @mmal_connection_create(i32**, %struct.TYPE_9__*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @mmal_connection_acquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
