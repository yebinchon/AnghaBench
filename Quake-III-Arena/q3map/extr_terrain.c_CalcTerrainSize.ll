; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_CalcTerrainSize.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_CalcTerrainSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@mapent = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"CalcTerrainSize: Invalid terrain size: %fx%f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalcTerrainSize(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = call i32 @ClearBounds(i64* %10, i64* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapent, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  br label %16

16:                                               ; preds = %32, %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64*, i64** %4, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = call i32 @AddPointToBounds(i32 %22, i64* %23, i64* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64*, i64** %4, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = call i32 @AddPointToBounds(i32 %28, i64* %29, i64* %30)
  br label %32

32:                                               ; preds = %19
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %7, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapent, align 8
  %38 = call i8* @ValueForKey(%struct.TYPE_6__* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapent, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = call i32 @GetVectorForKey(%struct.TYPE_6__* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapent, align 8
  %49 = call i8* @ValueForKey(%struct.TYPE_6__* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapent, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = call i32 @GetVectorForKey(%struct.TYPE_6__* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %56)
  br label %58

58:                                               ; preds = %54, %47
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load i64*, i64** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = fadd double %68, 1.000000e-01
  %70 = fptosi double %69 to i64
  %71 = call i64 @floor(i64 %70)
  %72 = load i64*, i64** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %71, i64* %75, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to double
  %82 = fadd double %81, 1.000000e-01
  %83 = fptosi double %82 to i64
  %84 = call i64 @floor(i64 %83)
  %85 = load i64*, i64** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %84, i64* %88, align 8
  br label %89

89:                                               ; preds = %62
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %59

92:                                               ; preds = %59
  %93 = load i64*, i64** %5, align 8
  %94 = load i64*, i64** %4, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = call i32 @VectorSubtract(i64* %93, i64* %94, i64* %95)
  %97 = load i64*, i64** %6, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = load i64*, i64** %6, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sle i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101, %92
  %107 = load i64*, i64** %6, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %6, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @Error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %109, i64 %112)
  br label %114

114:                                              ; preds = %106, %101
  ret void
}

declare dso_local i32 @ClearBounds(i64*, i64*) #1

declare dso_local i32 @AddPointToBounds(i32, i64*, i64*) #1

declare dso_local i8* @ValueForKey(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @GetVectorForKey(%struct.TYPE_6__*, i8*, i64*) #1

declare dso_local i64 @floor(i64) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @Error(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
