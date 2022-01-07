; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_PlaceOccupant.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_PlaceOccupant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32*, i64, %struct.TYPE_7__** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PlaceOccupant(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  br label %12

12:                                               ; preds = %47, %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLANENUM_LEAF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapplanes, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %22
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @DotProduct(i32 %24, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %18
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %8, align 8
  br label %47

41:                                               ; preds = %18
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %8, align 8
  br label %47

47:                                               ; preds = %41, %35
  br label %12

48:                                               ; preds = %12
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @qfalse, align 4
  store i32 %54, i32* %4, align 4
  br label %62

55:                                               ; preds = %48
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = call i32 @FloodPortals_r(%struct.TYPE_7__* %59, i32 1)
  %61 = load i32, i32* @qtrue, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %53
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @DotProduct(i32, i32) #1

declare dso_local i32 @FloodPortals_r(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
