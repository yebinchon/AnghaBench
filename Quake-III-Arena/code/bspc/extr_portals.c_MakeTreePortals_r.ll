; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_portals.c_MakeTreePortals_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_portals.c_MakeTreePortals_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__**, i32*, i32* }

@.str = private unnamed_addr constant [32 x i8] c"WARNING: node without a volume\0A\00", align 1
@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"WARNING: node with unbounded volume\0A\00", align 1
@PLANENUM_LEAF = common dso_local global i64 0, align 8
@c_numportalizednodes = common dso_local global i32 0, align 4
@cancelconversion = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeTreePortals_r(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @CalcNodeBounds(%struct.TYPE_6__* %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %10, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @Log_Print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34, %23
  %45 = call i32 @Log_Print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %20

50:                                               ; preds = %44, %20
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PLANENUM_LEAF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %72

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = call i32 @MakeNodePortal(%struct.TYPE_6__* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = call i32 @SplitNodePortals(%struct.TYPE_6__* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  call void @MakeTreePortals_r(%struct.TYPE_6__* %66)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  call void @MakeTreePortals_r(%struct.TYPE_6__* %71)
  br label %72

72:                                               ; preds = %57, %56
  ret void
}

declare dso_local i32 @CalcNodeBounds(%struct.TYPE_6__*) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @MakeNodePortal(%struct.TYPE_6__*) #1

declare dso_local i32 @SplitNodePortals(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
