; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_ProcessWorldModel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_ProcessWorldModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_29__ = type { i32 }

@entities = common dso_local global %struct.TYPE_30__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"**********************\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"******* leaked *******\0A\00", align 1
@leaktest = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"--- MAP LEAKED, ABORTING LEAKTEST ---\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@glview = common dso_local global i64 0, align 8
@source = common dso_local global i32 0, align 4
@nofog = common dso_local global i32 0, align 4
@nosubdivide = common dso_local global i32 0, align 4
@nomerge = common dso_local global i32 0, align 4
@notjunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessWorldModel() #0 {
  %1 = alloca %struct.TYPE_30__*, align 8
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @BeginModel()
  %6 = load %struct.TYPE_30__*, %struct.TYPE_30__** @entities, align 8
  %7 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %6, i64 0
  store %struct.TYPE_30__* %7, %struct.TYPE_30__** %1, align 8
  %8 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %11 = call i32 @PatchMapDrawSurfs(%struct.TYPE_30__* %10)
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** @entities, align 8
  %13 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @MakeStructuralBspFaceList(i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call %struct.TYPE_29__* @FaceBSP(i32* %17)
  store %struct.TYPE_29__* %18, %struct.TYPE_29__** %2, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %20 = call i32 @MakeTreePortals(%struct.TYPE_29__* %19)
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %23 = call i32 @FilterStructuralBrushesIntoTree(%struct.TYPE_30__* %21, %struct.TYPE_29__* %22)
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %25 = call i64 @FloodEntities(%struct.TYPE_29__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %0
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FillOutside(i32 %30)
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %34 = call i32 @ClipSidesIntoTree(%struct.TYPE_30__* %32, %struct.TYPE_29__* %33)
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** @entities, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @MakeVisibleBspFaceList(i32 %38)
  store i32* %39, i32** %3, align 8
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %41 = call i32 @FreeTree(%struct.TYPE_29__* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call %struct.TYPE_29__* @FaceBSP(i32* %42)
  store %struct.TYPE_29__* %43, %struct.TYPE_29__** %2, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %45 = call i32 @MakeTreePortals(%struct.TYPE_29__* %44)
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %48 = call i32 @FilterStructuralBrushesIntoTree(%struct.TYPE_30__* %46, %struct.TYPE_29__* %47)
  %49 = load i32, i32* @qfalse, align 4
  store i32 %49, i32* %4, align 4
  br label %66

50:                                               ; preds = %0
  %51 = call i32 @_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %55 = call i32 @LeakFile(%struct.TYPE_29__* %54)
  %56 = load i64, i64* @leaktest, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = call i32 @_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @exit(i32 0) #3
  unreachable

61:                                               ; preds = %50
  %62 = load i32, i32* @qtrue, align 4
  store i32 %62, i32* %4, align 4
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %65 = call i32 @ClipSidesIntoTree(%struct.TYPE_30__* %63, %struct.TYPE_29__* %64)
  br label %66

66:                                               ; preds = %61, %27
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %68 = call i32 @NumberClusters(%struct.TYPE_29__* %67)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %73 = call i32 @WritePortalFile(%struct.TYPE_29__* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i64, i64* @glview, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %79 = load i32, i32* @source, align 4
  %80 = call i32 @WriteGLView(%struct.TYPE_29__* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %83 = call i32 @FloodAreas(%struct.TYPE_29__* %82)
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %86 = call i32 @FilterDetailBrushesIntoTree(%struct.TYPE_30__* %84, %struct.TYPE_29__* %85)
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %88 = call i32 @AddTriangleModels(%struct.TYPE_29__* %87)
  %89 = load i32, i32* @nofog, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %81
  %92 = call i32 (...) @FogDrawSurfs()
  br label %93

93:                                               ; preds = %91, %81
  %94 = load i32, i32* @nosubdivide, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %99 = call i32 @SubdivideDrawSurfs(%struct.TYPE_30__* %97, %struct.TYPE_29__* %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* @nomerge, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %106 = call i32 @MergeSides(%struct.TYPE_30__* %104, %struct.TYPE_29__* %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* @notjunc, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %112 = call i32 @FixTJunctions(%struct.TYPE_30__* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %115 = call i32 @AllocateLightmaps(%struct.TYPE_30__* %114)
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %118 = call i32 @FilterDrawsurfsIntoTree(%struct.TYPE_30__* %116, %struct.TYPE_29__* %117)
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @EndModel(i32 %121)
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %124 = call i32 @FreeTree(%struct.TYPE_29__* %123)
  ret void
}

declare dso_local i32 @BeginModel(...) #1

declare dso_local i32 @PatchMapDrawSurfs(%struct.TYPE_30__*) #1

declare dso_local i32* @MakeStructuralBspFaceList(i32) #1

declare dso_local %struct.TYPE_29__* @FaceBSP(i32*) #1

declare dso_local i32 @MakeTreePortals(%struct.TYPE_29__*) #1

declare dso_local i32 @FilterStructuralBrushesIntoTree(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i64 @FloodEntities(%struct.TYPE_29__*) #1

declare dso_local i32 @FillOutside(i32) #1

declare dso_local i32 @ClipSidesIntoTree(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32* @MakeVisibleBspFaceList(i32) #1

declare dso_local i32 @FreeTree(%struct.TYPE_29__*) #1

declare dso_local i32 @_printf(i8*) #1

declare dso_local i32 @LeakFile(%struct.TYPE_29__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @NumberClusters(%struct.TYPE_29__*) #1

declare dso_local i32 @WritePortalFile(%struct.TYPE_29__*) #1

declare dso_local i32 @WriteGLView(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @FloodAreas(%struct.TYPE_29__*) #1

declare dso_local i32 @FilterDetailBrushesIntoTree(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @AddTriangleModels(%struct.TYPE_29__*) #1

declare dso_local i32 @FogDrawSurfs(...) #1

declare dso_local i32 @SubdivideDrawSurfs(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @MergeSides(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @FixTJunctions(%struct.TYPE_30__*) #1

declare dso_local i32 @AllocateLightmaps(%struct.TYPE_30__*) #1

declare dso_local i32 @FilterDrawsurfsIntoTree(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @EndModel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
