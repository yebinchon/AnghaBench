; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_SubdivideDrawSurfs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_SubdivideDrawSurfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { float, i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"----- SubdivideDrawSurfs -----\0A\00", align 1
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SubdivideDrawSurfs(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = call i32 @qprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @numMapDrawSurfs, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %68, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %16
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapDrawSurfs, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %23
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %6, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %68

30:                                               ; preds = %20
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %10, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %68

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %39
  br label %68

52:                                               ; preds = %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load float, float* %54, align 8
  store float %55, float* %9, align 4
  %56 = load float, float* %9, align 4
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = call i32* @WindingFromDrawSurf(%struct.TYPE_13__* %60)
  store i32* %61, i32** %8, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load float, float* %9, align 4
  %67 = call i32 @SubdivideDrawSurf(%struct.TYPE_13__* %64, i32* %65, float %66)
  br label %68

68:                                               ; preds = %59, %58, %51, %38, %29
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %16

71:                                               ; preds = %16
  ret void
}

declare dso_local i32 @qprintf(i8*) #1

declare dso_local i32* @WindingFromDrawSurf(%struct.TYPE_13__*) #1

declare dso_local i32 @SubdivideDrawSurf(%struct.TYPE_13__*, i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
