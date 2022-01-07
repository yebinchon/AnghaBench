; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_RB_StageIteratorLightmappedMultitexture.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_RB_StageIteratorLightmappedMultitexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64, i64, i32, i32, i32, i32**, %struct.TYPE_7__**, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@tess = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@r_logFile = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"--- RB_StageIteratorLightmappedMultitexture( %s ) ---\0A\00", align 1
@GLS_DEFAULT = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@r_lightmap = common dso_local global %struct.TYPE_11__* null, align 8
@GL_REPLACE = common dso_local global i32 0, align 4
@GL_MODULATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"glLockArraysEXT\0A\00", align 1
@SS_OPAQUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"glUnlockArraysEXT\0A\00", align 1
@GL_FLAT = common dso_local global i32 0, align 4
@GL_SMOOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_StageIteratorLightmappedMultitexture() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* @tess, %struct.TYPE_9__** %1, align 8
  %2 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_logFile, align 8
  %3 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @va(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @GLimp_LogComment(i8* %10)
  br label %12

12:                                               ; preds = %6, %0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @GL_Cull(i32 %17)
  %19 = load i32, i32* @GLS_DEFAULT, align 4
  %20 = call i32 @GL_State(i32 %19)
  %21 = load i32, i32* @GL_FLOAT, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @qglVertexPointer(i32 3, i32 %21, i32 16, i32 %24)
  %26 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %27 = call i32 @qglEnableClientState(i32 %26)
  %28 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %30 = call i32 @qglColorPointer(i32 4, i32 %28, i32 0, i32 %29)
  %31 = call i32 @GL_SelectTexture(i32 0)
  %32 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %33 = call i32 @qglEnableClientState(i32 %32)
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %34, i64 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @R_BindAnimatedImage(i32* %39)
  %41 = load i32, i32* @GL_FLOAT, align 4
  %42 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 6), align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @qglTexCoordPointer(i32 2, i32 %41, i32 16, i32 %46)
  %48 = call i32 @GL_SelectTexture(i32 1)
  %49 = load i32, i32* @GL_TEXTURE_2D, align 4
  %50 = call i32 @qglEnable(i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_lightmap, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %12
  %56 = load i32, i32* @GL_REPLACE, align 4
  %57 = call i32 @GL_TexEnv(i32 %56)
  br label %61

58:                                               ; preds = %12
  %59 = load i32, i32* @GL_MODULATE, align 4
  %60 = call i32 @GL_TexEnv(i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %62, i64 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = call i32 @R_BindAnimatedImage(i32* %67)
  %69 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %70 = call i32 @qglEnableClientState(i32 %69)
  %71 = load i32, i32* @GL_FLOAT, align 4
  %72 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 6), align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @qglTexCoordPointer(i32 2, i32 %71, i32 16, i32 %76)
  br i1 true, label %78, label %84

78:                                               ; preds = %61
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @qglLockArraysEXT(i32 0, i32 %81)
  %83 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %61
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @R_DrawElements(i32 %87, i32 %90)
  %92 = load i32, i32* @GL_TEXTURE_2D, align 4
  %93 = call i32 @qglDisable(i32 %92)
  %94 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %95 = call i32 @qglDisableClientState(i32 %94)
  %96 = call i32 @GL_SelectTexture(i32 0)
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %84
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SS_OPAQUE, align 8
  %104 = icmp sle i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 (...) @ProjectDlightTexture()
  br label %107

107:                                              ; preds = %105, %99, %84
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 1), align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (...) @RB_FogPass()
  br label %117

117:                                              ; preds = %115, %110, %107
  br i1 true, label %118, label %121

118:                                              ; preds = %117
  %119 = call i32 (...) @qglUnlockArraysEXT()
  %120 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %117
  ret void
}

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglColorPointer(i32, i32, i32, i32) #1

declare dso_local i32 @GL_SelectTexture(i32) #1

declare dso_local i32 @R_BindAnimatedImage(i32*) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @GL_TexEnv(i32) #1

declare dso_local i32 @qglLockArraysEXT(i32, i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglDisableClientState(i32) #1

declare dso_local i32 @ProjectDlightTexture(...) #1

declare dso_local i32 @RB_FogPass(...) #1

declare dso_local i32 @qglUnlockArraysEXT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
