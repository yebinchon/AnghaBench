; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_RB_StageIteratorGeneric.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_RB_StageIteratorGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i64, i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@tess = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@r_logFile = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"--- RB_StageIteratorGeneric( %s ) ---\0A\00", align 1
@GL_POLYGON_OFFSET_FILL = common dso_local global i32 0, align 4
@r_offsetFactor = common dso_local global %struct.TYPE_13__* null, align 8
@r_offsetUnits = common dso_local global %struct.TYPE_12__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@setArraysOnce = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"glLockArraysEXT\0A\00", align 1
@SS_OPAQUE = common dso_local global i64 0, align 8
@SURF_NODLIGHT = common dso_local global i32 0, align 4
@SURF_SKY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"glUnlockArraysEXT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_StageIteratorGeneric() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* @tess, %struct.TYPE_11__** %1, align 8
  %2 = call i32 (...) @RB_DeformTessGeometry()
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_logFile, align 8
  %4 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @va(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 @GLimp_LogComment(i8* %11)
  br label %13

13:                                               ; preds = %7, %0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @GL_Cull(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %13
  %27 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %28 = call i32 @qglEnable(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_offsetFactor, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_offsetUnits, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qglPolygonOffset(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %26, %13
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39, %36
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* @setArraysOnce, align 4
  %48 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %49 = call i32 @qglDisableClientState(i32 %48)
  %50 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %51 = call i32 @qglDisableClientState(i32 %50)
  br label %66

52:                                               ; preds = %39
  %53 = load i32, i32* @qtrue, align 4
  store i32 %53, i32* @setArraysOnce, align 4
  %54 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %55 = call i32 @qglEnableClientState(i32 %54)
  %56 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 6, i32 1), align 8
  %58 = call i32 @qglColorPointer(i32 4, i32 %56, i32 0, i32 %57)
  %59 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %60 = call i32 @qglEnableClientState(i32 %59)
  %61 = load i32, i32* @GL_FLOAT, align 4
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 6, i32 0), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @qglTexCoordPointer(i32 2, i32 %61, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %52, %46
  %67 = load i32, i32* @GL_FLOAT, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @qglVertexPointer(i32 3, i32 %67, i32 16, i32 %70)
  br i1 true, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @qglLockArraysEXT(i32 0, i32 %75)
  %77 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %72, %66
  %79 = load i32, i32* @setArraysOnce, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %83 = call i32 @qglEnableClientState(i32 %82)
  %84 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %85 = call i32 @qglEnableClientState(i32 %84)
  br label %86

86:                                               ; preds = %81, %78
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %88 = call i32 @RB_IterateStagesGeneric(%struct.TYPE_11__* %87)
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 3), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SS_OPAQUE, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SURF_NODLIGHT, align 4
  %102 = load i32, i32* @SURF_SKY, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %97
  %107 = call i32 (...) @ProjectDlightTexture()
  br label %108

108:                                              ; preds = %106, %97, %91, %86
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 2), align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (...) @RB_FogPass()
  br label %118

118:                                              ; preds = %116, %111, %108
  br i1 true, label %119, label %122

119:                                              ; preds = %118
  %120 = call i32 (...) @qglUnlockArraysEXT()
  %121 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %118
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %131 = call i32 @qglDisable(i32 %130)
  br label %132

132:                                              ; preds = %129, %122
  ret void
}

declare dso_local i32 @RB_DeformTessGeometry(...) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglPolygonOffset(i32, i32) #1

declare dso_local i32 @qglDisableClientState(i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglColorPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglLockArraysEXT(i32, i32) #1

declare dso_local i32 @RB_IterateStagesGeneric(%struct.TYPE_11__*) #1

declare dso_local i32 @ProjectDlightTexture(...) #1

declare dso_local i32 @RB_FogPass(...) #1

declare dso_local i32 @qglUnlockArraysEXT(...) #1

declare dso_local i32 @qglDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
