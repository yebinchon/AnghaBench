; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterDrawsurfsIntoTree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterDrawsurfsIntoTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, i64, i64, i64, i32 }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"----- FilterDrawsurfsIntoTree -----\0A\00", align 1
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%5i emited drawsurfs\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%5i references\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%5i stripfaces\0A\00", align 1
@c_stripSurfaces = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"%5i fanfaces\0A\00", align 1
@c_fanSurfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FilterDrawsurfsIntoTree(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %96, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @numMapDrawSurfs, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %99

18:                                               ; preds = %14
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @mapDrawSurfs, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i64 %21
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %96

33:                                               ; preds = %27, %18
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @FilterMiscModelSurfIntoTree(%struct.TYPE_16__* %39, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = call i32 @EmitModelSurf(%struct.TYPE_16__* %42)
  br label %86

44:                                               ; preds = %33
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @FilterPatchSurfIntoTree(%struct.TYPE_16__* %50, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = call i32 @EmitPatchSurf(%struct.TYPE_16__* %53)
  br label %85

55:                                               ; preds = %44
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @FilterFlareSurfIntoTree(%struct.TYPE_16__* %61, i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = call i32 @EmitFlareSurf(%struct.TYPE_16__* %64)
  br label %84

66:                                               ; preds = %55
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @FilterFaceIntoTree(%struct.TYPE_16__* %67, i32* %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = call i32 @CreateFlareSurface(%struct.TYPE_16__* %79)
  br label %81

81:                                               ; preds = %78, %66
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = call i32 @EmitPlanarSurf(%struct.TYPE_16__* %82)
  br label %84

84:                                               ; preds = %81, %60
  br label %85

85:                                               ; preds = %84, %49
  br label %86

86:                                               ; preds = %85, %38
  %87 = load i32, i32* %7, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %89, %86
  br label %96

96:                                               ; preds = %95, %32
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %14

99:                                               ; preds = %14
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @c_stripSurfaces, align 4
  %105 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @c_fanSurfaces, align 4
  %107 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  ret void
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @FilterMiscModelSurfIntoTree(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @EmitModelSurf(%struct.TYPE_16__*) #1

declare dso_local i32 @FilterPatchSurfIntoTree(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @EmitPatchSurf(%struct.TYPE_16__*) #1

declare dso_local i32 @FilterFlareSurfIntoTree(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @EmitFlareSurf(%struct.TYPE_16__*) #1

declare dso_local i32 @FilterFaceIntoTree(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @CreateFlareSurface(%struct.TYPE_16__*) #1

declare dso_local i32 @EmitPlanarSurf(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
