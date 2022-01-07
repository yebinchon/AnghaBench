; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_ComputeStageIteratorFunc.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_ComputeStageIteratorFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@RB_StageIteratorGeneric = common dso_local global i32 0, align 4
@shader = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@RB_StageIteratorSky = common dso_local global i32 0, align 4
@r_ignoreFastPath = common dso_local global %struct.TYPE_8__* null, align 8
@stages = common dso_local global %struct.TYPE_6__* null, align 8
@CGEN_LIGHTING_DIFFUSE = common dso_local global i64 0, align 8
@AGEN_IDENTITY = common dso_local global i64 0, align 8
@TCGEN_TEXTURE = common dso_local global i64 0, align 8
@RB_StageIteratorVertexLitTexture = common dso_local global i32 0, align 4
@CGEN_IDENTITY = common dso_local global i64 0, align 8
@TCGEN_LIGHTMAP = common dso_local global i64 0, align 8
@RB_StageIteratorLightmappedMultitexture = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ComputeStageIteratorFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeStageIteratorFunc() #0 {
  %1 = load i32, i32* @RB_StageIteratorGeneric, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1), align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 5), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @RB_StageIteratorSky, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1), align 4
  br label %110

6:                                                ; preds = %0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_ignoreFastPath, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %111

12:                                               ; preds = %6
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 0), align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %56

15:                                               ; preds = %12
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @stages, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CGEN_LIGHTING_DIFFUSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @stages, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AGEN_IDENTITY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @stages, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TCGEN_TEXTURE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %29
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 4), align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 2), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 3), align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @RB_StageIteratorVertexLitTexture, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1), align 4
  br label %110

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %42
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %29
  br label %54

54:                                               ; preds = %53, %22
  br label %55

55:                                               ; preds = %54, %15
  br label %56

56:                                               ; preds = %55, %12
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 0), align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %109

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @stages, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CGEN_IDENTITY, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @stages, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AGEN_IDENTITY, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %66
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @stages, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TCGEN_TEXTURE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %73
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @stages, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TCGEN_LIGHTMAP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %83
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 4), align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 3), align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 2), align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @RB_StageIteratorLightmappedMultitexture, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1), align 4
  br label %110

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %96
  br label %106

106:                                              ; preds = %105, %93
  br label %107

107:                                              ; preds = %106, %83, %73
  br label %108

108:                                              ; preds = %107, %66, %59
  br label %109

109:                                              ; preds = %108, %56
  br label %110

110:                                              ; preds = %109, %102, %48, %4
  br label %111

111:                                              ; preds = %110, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
