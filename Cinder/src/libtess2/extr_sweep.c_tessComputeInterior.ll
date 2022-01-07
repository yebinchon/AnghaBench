; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_tessComputeInterior.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_tessComputeInterior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tessComputeInterior(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %7 = call i32 @RemoveDegenerateEdges(%struct.TYPE_20__* %6)
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = call i32 @InitPriorityQ(%struct.TYPE_20__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

12:                                               ; preds = %1
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = call i32 @InitEdgeDict(%struct.TYPE_20__* %13)
  br label %15

15:                                               ; preds = %51, %12
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pqExtractMin(i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %4, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %37, %22
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pqMinimum(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %5, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = icmp eq %struct.TYPE_19__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = call i32 @VertEq(%struct.TYPE_19__* %32, %struct.TYPE_19__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %23
  br label %51

37:                                               ; preds = %31
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @pqExtractMin(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %5, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SpliceMergeVertices(%struct.TYPE_20__* %43, i32 %46, i32 %49)
  br label %23

51:                                               ; preds = %36
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = call i32 @SweepEvent(%struct.TYPE_20__* %52, %struct.TYPE_19__* %53)
  br label %15

55:                                               ; preds = %15
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dictMin(i32 %58)
  %60 = call i64 @dictKey(i32 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_21__*
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = call i32 @DebugEvent(%struct.TYPE_20__* %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %71 = call i32 @DoneEdgeDict(%struct.TYPE_20__* %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = call i32 @DonePriorityQ(%struct.TYPE_20__* %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @RemoveDegenerateFaces(%struct.TYPE_20__* %74, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %86

81:                                               ; preds = %55
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @tessMeshCheckMesh(i32 %84)
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %80, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @RemoveDegenerateEdges(%struct.TYPE_20__*) #1

declare dso_local i32 @InitPriorityQ(%struct.TYPE_20__*) #1

declare dso_local i32 @InitEdgeDict(%struct.TYPE_20__*) #1

declare dso_local i64 @pqExtractMin(i32) #1

declare dso_local i64 @pqMinimum(i32) #1

declare dso_local i32 @VertEq(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @SpliceMergeVertices(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @SweepEvent(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @dictKey(i32) #1

declare dso_local i32 @dictMin(i32) #1

declare dso_local i32 @DebugEvent(%struct.TYPE_20__*) #1

declare dso_local i32 @DoneEdgeDict(%struct.TYPE_20__*) #1

declare dso_local i32 @DonePriorityQ(%struct.TYPE_20__*) #1

declare dso_local i32 @RemoveDegenerateFaces(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @tessMeshCheckMesh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
