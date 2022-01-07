; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q3.c_Q3_FreeMaxBSP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q3.c_Q3_FreeMaxBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q3_dmodels = common dso_local global i32* null, align 8
@q3_nummodels = common dso_local global i64 0, align 8
@q3_dshaders = common dso_local global i32* null, align 8
@q3_numShaders = common dso_local global i64 0, align 8
@q3_dentdata = common dso_local global i32* null, align 8
@q3_entdatasize = common dso_local global i64 0, align 8
@q3_dleafs = common dso_local global i32* null, align 8
@q3_numleafs = common dso_local global i64 0, align 8
@q3_dplanes = common dso_local global i32* null, align 8
@q3_numplanes = common dso_local global i64 0, align 8
@q3_dnodes = common dso_local global i32* null, align 8
@q3_numnodes = common dso_local global i64 0, align 8
@q3_dleafsurfaces = common dso_local global i32* null, align 8
@q3_numleafsurfaces = common dso_local global i64 0, align 8
@q3_dleafbrushes = common dso_local global i32* null, align 8
@q3_numleafbrushes = common dso_local global i64 0, align 8
@q3_dbrushes = common dso_local global i32* null, align 8
@q3_numbrushes = common dso_local global i64 0, align 8
@q3_dbrushsides = common dso_local global i32* null, align 8
@q3_numbrushsides = common dso_local global i64 0, align 8
@q3_lightBytes = common dso_local global i32* null, align 8
@q3_numLightBytes = common dso_local global i64 0, align 8
@q3_gridData = common dso_local global i32* null, align 8
@q3_numGridPoints = common dso_local global i64 0, align 8
@q3_visBytes = common dso_local global i32* null, align 8
@q3_numVisBytes = common dso_local global i64 0, align 8
@q3_drawVerts = common dso_local global i32* null, align 8
@q3_numDrawVerts = common dso_local global i64 0, align 8
@q3_drawIndexes = common dso_local global i32* null, align 8
@q3_numDrawIndexes = common dso_local global i64 0, align 8
@q3_drawSurfaces = common dso_local global i32* null, align 8
@q3_numDrawSurfaces = common dso_local global i64 0, align 8
@q3_dfogs = common dso_local global i32* null, align 8
@q3_numFogs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q3_FreeMaxBSP() #0 {
  %1 = load i32*, i32** @q3_dmodels, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @q3_dmodels, align 8
  %5 = call i32 @FreeMemory(i32* %4)
  br label %6

6:                                                ; preds = %3, %0
  store i32* null, i32** @q3_dmodels, align 8
  store i64 0, i64* @q3_nummodels, align 8
  %7 = load i32*, i32** @q3_dshaders, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @q3_dshaders, align 8
  %11 = call i32 @FreeMemory(i32* %10)
  br label %12

12:                                               ; preds = %9, %6
  store i32* null, i32** @q3_dshaders, align 8
  store i64 0, i64* @q3_numShaders, align 8
  %13 = load i32*, i32** @q3_dentdata, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** @q3_dentdata, align 8
  %17 = call i32 @FreeMemory(i32* %16)
  br label %18

18:                                               ; preds = %15, %12
  store i32* null, i32** @q3_dentdata, align 8
  store i64 0, i64* @q3_entdatasize, align 8
  %19 = load i32*, i32** @q3_dleafs, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** @q3_dleafs, align 8
  %23 = call i32 @FreeMemory(i32* %22)
  br label %24

24:                                               ; preds = %21, %18
  store i32* null, i32** @q3_dleafs, align 8
  store i64 0, i64* @q3_numleafs, align 8
  %25 = load i32*, i32** @q3_dplanes, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** @q3_dplanes, align 8
  %29 = call i32 @FreeMemory(i32* %28)
  br label %30

30:                                               ; preds = %27, %24
  store i32* null, i32** @q3_dplanes, align 8
  store i64 0, i64* @q3_numplanes, align 8
  %31 = load i32*, i32** @q3_dnodes, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** @q3_dnodes, align 8
  %35 = call i32 @FreeMemory(i32* %34)
  br label %36

36:                                               ; preds = %33, %30
  store i32* null, i32** @q3_dnodes, align 8
  store i64 0, i64* @q3_numnodes, align 8
  %37 = load i32*, i32** @q3_dleafsurfaces, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** @q3_dleafsurfaces, align 8
  %41 = call i32 @FreeMemory(i32* %40)
  br label %42

42:                                               ; preds = %39, %36
  store i32* null, i32** @q3_dleafsurfaces, align 8
  store i64 0, i64* @q3_numleafsurfaces, align 8
  %43 = load i32*, i32** @q3_dleafbrushes, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** @q3_dleafbrushes, align 8
  %47 = call i32 @FreeMemory(i32* %46)
  br label %48

48:                                               ; preds = %45, %42
  store i32* null, i32** @q3_dleafbrushes, align 8
  store i64 0, i64* @q3_numleafbrushes, align 8
  %49 = load i32*, i32** @q3_dbrushes, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** @q3_dbrushes, align 8
  %53 = call i32 @FreeMemory(i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  store i32* null, i32** @q3_dbrushes, align 8
  store i64 0, i64* @q3_numbrushes, align 8
  %55 = load i32*, i32** @q3_dbrushsides, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** @q3_dbrushsides, align 8
  %59 = call i32 @FreeMemory(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  store i32* null, i32** @q3_dbrushsides, align 8
  store i64 0, i64* @q3_numbrushsides, align 8
  %61 = load i32*, i32** @q3_lightBytes, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** @q3_lightBytes, align 8
  %65 = call i32 @FreeMemory(i32* %64)
  br label %66

66:                                               ; preds = %63, %60
  store i32* null, i32** @q3_lightBytes, align 8
  store i64 0, i64* @q3_numLightBytes, align 8
  %67 = load i32*, i32** @q3_gridData, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** @q3_gridData, align 8
  %71 = call i32 @FreeMemory(i32* %70)
  br label %72

72:                                               ; preds = %69, %66
  store i32* null, i32** @q3_gridData, align 8
  store i64 0, i64* @q3_numGridPoints, align 8
  %73 = load i32*, i32** @q3_visBytes, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** @q3_visBytes, align 8
  %77 = call i32 @FreeMemory(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  store i32* null, i32** @q3_visBytes, align 8
  store i64 0, i64* @q3_numVisBytes, align 8
  %79 = load i32*, i32** @q3_drawVerts, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** @q3_drawVerts, align 8
  %83 = call i32 @FreeMemory(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  store i32* null, i32** @q3_drawVerts, align 8
  store i64 0, i64* @q3_numDrawVerts, align 8
  %85 = load i32*, i32** @q3_drawIndexes, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** @q3_drawIndexes, align 8
  %89 = call i32 @FreeMemory(i32* %88)
  br label %90

90:                                               ; preds = %87, %84
  store i32* null, i32** @q3_drawIndexes, align 8
  store i64 0, i64* @q3_numDrawIndexes, align 8
  %91 = load i32*, i32** @q3_drawSurfaces, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** @q3_drawSurfaces, align 8
  %95 = call i32 @FreeMemory(i32* %94)
  br label %96

96:                                               ; preds = %93, %90
  store i32* null, i32** @q3_drawSurfaces, align 8
  store i64 0, i64* @q3_numDrawSurfaces, align 8
  %97 = load i32*, i32** @q3_dfogs, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** @q3_dfogs, align 8
  %101 = call i32 @FreeMemory(i32* %100)
  br label %102

102:                                              ; preds = %99, %96
  store i32* null, i32** @q3_dfogs, align 8
  store i64 0, i64* @q3_numFogs, align 8
  ret void
}

declare dso_local i32 @FreeMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
