; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_DrawMultitextured.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_DrawMultitextured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__*, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@tess = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@r_lightmap = common dso_local global %struct.TYPE_16__* null, align 8
@GL_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32)* @DrawMultitextured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawMultitextured(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 1), align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %6, i64 %8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @GL_State(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %19 = load i32, i32* @GL_FILL, align 4
  %20 = call i32 @qglPolygonMode(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = call i32 @GL_SelectTexture(i32 0)
  %23 = load i32, i32* @GL_FLOAT, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @qglTexCoordPointer(i32 2, i32 %23, i32 0, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @R_BindAnimatedImage(i32* %34)
  %36 = call i32 @GL_SelectTexture(i32 1)
  %37 = load i32, i32* @GL_TEXTURE_2D, align 4
  %38 = call i32 @qglEnable(i32 %37)
  %39 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %40 = call i32 @qglEnableClientState(i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_lightmap, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %21
  %46 = load i32, i32* @GL_REPLACE, align 4
  %47 = call i32 @GL_TexEnv(i32 %46)
  br label %53

48:                                               ; preds = %21
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GL_TexEnv(i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* @GL_FLOAT, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @qglTexCoordPointer(i32 2, i32 %54, i32 0, i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = call i32 @R_BindAnimatedImage(i32* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @R_DrawElements(i32 %69, i32 %72)
  %74 = load i32, i32* @GL_TEXTURE_2D, align 4
  %75 = call i32 @qglDisable(i32 %74)
  %76 = call i32 @GL_SelectTexture(i32 0)
  ret void
}

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglPolygonMode(i32, i32) #1

declare dso_local i32 @GL_SelectTexture(i32) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @R_BindAnimatedImage(i32*) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @GL_TexEnv(i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

declare dso_local i32 @qglDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
