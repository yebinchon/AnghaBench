; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_CopyMapBrush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_CopyMapBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_11__ = type { i32, i64 }

@nummapbrushes = common dso_local global i64 0, align 8
@MAX_MAPFILE_BRUSHES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"MAX_MAPFILE_BRUSHES\00", align 1
@mapbrushes = common dso_local global %struct.TYPE_10__* null, align 8
@brushsides = common dso_local global %struct.TYPE_9__* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@MAX_MAPFILE_BRUSHSIDES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"MAX_MAPFILE_BRUSHSIDES\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @AAS_CopyMapBrush(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %9 = load i64, i64* @nummapbrushes, align 8
  %10 = load i64, i64* @MAX_MAPFILE_BRUSHES, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mapbrushes, align 8
  %16 = load i64, i64* @nummapbrushes, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %16
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @brushsides, align 8
  %19 = load i64, i64* @nummapbrushsides, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %19
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @nummapbrushes, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %101, %14
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %104

51:                                               ; preds = %45
  %52 = load i64, i64* @nummapbrushsides, align 8
  %53 = load i64, i64* @MAX_MAPFILE_BRUSHSIDES, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %7, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %8, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 6
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i64, i64* @nummapbrushsides, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* @nummapbrushsides, align 8
  br label %101

101:                                              ; preds = %57
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %45

104:                                              ; preds = %45
  %105 = load i64, i64* @nummapbrushes, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* @nummapbrushes, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %111
}

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
