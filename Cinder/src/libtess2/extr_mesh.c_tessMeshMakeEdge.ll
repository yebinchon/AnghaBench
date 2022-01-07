; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshMakeEdge.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshMakeEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @tessMeshMakeEdge(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @bucketAlloc(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @bucketAlloc(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @bucketAlloc(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %28, %25, %1
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @bucketFree(i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @bucketFree(i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @bucketFree(i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %52, %49
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %86

59:                                               ; preds = %28
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = call %struct.TYPE_10__* @MakeEdge(%struct.TYPE_9__* %60, i32* %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %7, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = icmp eq %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %86

67:                                               ; preds = %59
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = call i32 @MakeVertex(i32* %68, %struct.TYPE_10__* %69, i32* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = call i32 @MakeVertex(i32* %73, %struct.TYPE_10__* %76, i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = call i32 @MakeFace(i32* %80, %struct.TYPE_10__* %81, i32* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %2, align 8
  br label %86

86:                                               ; preds = %67, %66, %58
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %87
}

declare dso_local i64 @bucketAlloc(i32) #1

declare dso_local i32 @bucketFree(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @MakeEdge(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @MakeVertex(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @MakeFace(i32*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
