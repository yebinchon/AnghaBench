; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_MakeTreePortals_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_MakeTreePortals_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64*, i64, %struct.TYPE_6__**, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"WARNING: node without a volume\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"node has %d tiny portals\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"node reference point %1.2f %1.2f %1.2f\0A\00", align 1
@MIN_WORLD_COORD = common dso_local global i64 0, align 8
@MAX_WORLD_COORD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"WARNING: node with unbounded volume\0A\00", align 1
@PLANENUM_LEAF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeTreePortals_r(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @CalcNodeBounds(%struct.TYPE_6__* %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %10, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %17, %1
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MIN_WORLD_COORD, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAX_WORLD_COORD, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53, %43
  %64 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %69

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %40

69:                                               ; preds = %63, %40
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PLANENUM_LEAF, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %91

76:                                               ; preds = %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = call i32 @MakeNodePortal(%struct.TYPE_6__* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = call i32 @SplitNodePortals(%struct.TYPE_6__* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  call void @MakeTreePortals_r(%struct.TYPE_6__* %85)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  call void @MakeTreePortals_r(%struct.TYPE_6__* %90)
  br label %91

91:                                               ; preds = %76, %75
  ret void
}

declare dso_local i32 @CalcNodeBounds(%struct.TYPE_6__*) #1

declare dso_local i32 @_printf(i8*, ...) #1

declare dso_local i32 @MakeNodePortal(%struct.TYPE_6__*) #1

declare dso_local i32 @SplitNodePortals(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
