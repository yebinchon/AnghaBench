; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshAddEdgeVertex.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshAddEdgeVertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @tessMeshAddEdgeVertex(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = call %struct.TYPE_12__* @MakeEdge(%struct.TYPE_11__* %9, %struct.TYPE_12__* %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @Splice(%struct.TYPE_12__* %19, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @bucketAlloc(i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %52

37:                                               ; preds = %15
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MakeVertex(i32* %38, %struct.TYPE_12__* %39, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %3, align 8
  br label %52

52:                                               ; preds = %37, %36, %14
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %53
}

declare dso_local %struct.TYPE_12__* @MakeEdge(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @Splice(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @bucketAlloc(i32) #1

declare dso_local i32 @MakeVertex(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
