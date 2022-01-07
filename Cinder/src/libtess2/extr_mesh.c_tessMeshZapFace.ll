; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshZapFace.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshZapFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_13__*, i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tessMeshZapFace(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %7, align 8
  br label %17

17:                                               ; preds = %86, %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %7, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %85

28:                                               ; preds = %17
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = icmp eq %struct.TYPE_13__* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = call i32 @KillVertex(%struct.TYPE_12__* %35, %struct.TYPE_15__* %38, i32* null)
  br label %53

40:                                               ; preds = %28
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @Splice(%struct.TYPE_13__* %48, i32 %51)
  br label %53

53:                                               ; preds = %40, %34
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %8, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = icmp eq %struct.TYPE_13__* %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i32 @KillVertex(%struct.TYPE_12__* %63, %struct.TYPE_15__* %66, i32* null)
  br label %81

68:                                               ; preds = %53
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @Splice(%struct.TYPE_13__* %76, i32 %79)
  br label %81

81:                                               ; preds = %68, %62
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = call i32 @KillEdge(%struct.TYPE_12__* %82, %struct.TYPE_13__* %83)
  br label %85

85:                                               ; preds = %81, %17
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = icmp ne %struct.TYPE_13__* %87, %88
  br i1 %89, label %17, label %90

90:                                               ; preds = %86
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %9, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %10, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %102, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = call i32 @bucketFree(i32 %105, %struct.TYPE_14__* %106)
  ret void
}

declare dso_local i32 @KillVertex(%struct.TYPE_12__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @Splice(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @KillEdge(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @bucketFree(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
