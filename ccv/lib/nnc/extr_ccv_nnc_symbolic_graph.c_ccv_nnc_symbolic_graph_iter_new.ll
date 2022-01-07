; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_symbolic_graph_iter_new.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_symbolic_graph_iter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ccv_nnc_symbolic_graph_iter_new(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  br label %26

20:                                               ; preds = %5
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = call i64 @ccv_array_get(%struct.TYPE_9__* %23, i32 0)
  %25 = inttoptr i64 %24 to i32*
  br label %26

26:                                               ; preds = %20, %18
  %27 = phi i32* [ %19, %18 ], [ %25, %20 ]
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  br label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %32, %30
  %39 = phi i32 [ %31, %30 ], [ %37, %32 ]
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  br label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = call i64 @ccv_array_get(%struct.TYPE_9__* %47, i32 0)
  %49 = inttoptr i64 %48 to i32*
  br label %50

50:                                               ; preds = %44, %42
  %51 = phi i32* [ %43, %42 ], [ %49, %44 ]
  store i32* %51, i32** %13, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  br label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %56, %54
  %63 = phi i32 [ %55, %54 ], [ %61, %56 ]
  store i32 %63, i32* %14, align 4
  %64 = call i64 @cccalloc(i32 1, i32 16)
  %65 = inttoptr i64 %64 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %15, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i64 @ccv_array_get(%struct.TYPE_9__* %74, i32 0)
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @ccv_nnc_graph_visit_new(%struct.TYPE_7__* %71, i32* %76, i32 %81, i32* %82, i32 %83, i32* %84, i32 %85, i32 0)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  ret %struct.TYPE_8__* %89
}

declare dso_local i64 @ccv_array_get(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @cccalloc(i32, i32) #1

declare dso_local i32 @ccv_nnc_graph_visit_new(%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
