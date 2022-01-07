; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_RB_StageIteratorVertexLitTexture.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_RB_StageIteratorVertexLitTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64, i64, i32, i32, %struct.TYPE_8__**, i32, i32, i32**, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@tess = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@r_logFile = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"--- RB_StageIteratorVertexLitTexturedUnfogged( %s ) ---\0A\00", align 1
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"glLockArraysEXT\0A\00", align 1
@SS_OPAQUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"glUnlockArraysEXT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_StageIteratorVertexLitTexture() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* @tess, %struct.TYPE_10__** %1, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 9, i32 0), align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @RB_CalcDiffuseColor(i8* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_logFile, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @va(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @GLimp_LogComment(i8* %17)
  br label %19

19:                                               ; preds = %13, %0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @GL_Cull(i32 %24)
  %26 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %27 = call i32 @qglEnableClientState(i32 %26)
  %28 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %29 = call i32 @qglEnableClientState(i32 %28)
  %30 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 9, i32 0), align 8
  %32 = call i32 @qglColorPointer(i32 4, i32 %30, i32 0, i64 %31)
  %33 = load i32, i32* @GL_FLOAT, align 4
  %34 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 8), align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @qglTexCoordPointer(i32 2, i32 %33, i32 16, i32 %38)
  %40 = load i32, i32* @GL_FLOAT, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @qglVertexPointer(i32 3, i32 %40, i32 16, i32 %43)
  br i1 true, label %45, label %51

45:                                               ; preds = %19
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @qglLockArraysEXT(i32 0, i32 %48)
  %50 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %19
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 5), align 8
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %52, i64 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i32 @R_BindAnimatedImage(i32* %57)
  %59 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 5), align 8
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %59, i64 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @GL_State(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @R_DrawElements(i32 %67, i32 %70)
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %51
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SS_OPAQUE, align 8
  %79 = icmp sle i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 (...) @ProjectDlightTexture()
  br label %82

82:                                               ; preds = %80, %74, %51
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 (...) @RB_FogPass()
  br label %92

92:                                               ; preds = %90, %85, %82
  br i1 true, label %93, label %96

93:                                               ; preds = %92
  %94 = call i32 (...) @qglUnlockArraysEXT()
  %95 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %92
  ret void
}

declare dso_local i32 @RB_CalcDiffuseColor(i8*) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglColorPointer(i32, i32, i32, i64) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglLockArraysEXT(i32, i32) #1

declare dso_local i32 @R_BindAnimatedImage(i32*) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

declare dso_local i32 @ProjectDlightTexture(...) #1

declare dso_local i32 @RB_FogPass(...) #1

declare dso_local i32 @qglUnlockArraysEXT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
