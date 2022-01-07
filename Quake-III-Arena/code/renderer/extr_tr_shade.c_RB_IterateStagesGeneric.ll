; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_RB_IterateStagesGeneric.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_RB_IterateStagesGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64*, i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*, i32 }

@MAX_SHADER_STAGES = common dso_local global i32 0, align 4
@tess = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@setArraysOnce = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@r_vertexLight = common dso_local global %struct.TYPE_21__* null, align 8
@r_uiFullScreen = common dso_local global %struct.TYPE_22__* null, align 8
@glConfig = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@GLHW_PERMEDIA2 = common dso_local global i64 0, align 8
@r_lightmap = common dso_local global %struct.TYPE_23__* null, align 8
@tr = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @RB_IterateStagesGeneric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_IterateStagesGeneric(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %139, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %142

9:                                                ; preds = %5
  %10 = load %struct.TYPE_17__**, %struct.TYPE_17__*** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @tess, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %10, i64 %12
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %142

18:                                               ; preds = %9
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = call i32 @ComputeColors(%struct.TYPE_17__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = call i32 @ComputeTexCoords(%struct.TYPE_17__* %21)
  %23 = load i32, i32* @setArraysOnce, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %27 = call i32 @qglEnableClientState(i32 %26)
  %28 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @qglColorPointer(i32 4, i32 %28, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %25, %18
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @DrawMultitextured(%struct.TYPE_18__* %45, i32 %46)
  br label %108

48:                                               ; preds = %34
  %49 = load i32, i32* @setArraysOnce, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @GL_FLOAT, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @qglTexCoordPointer(i32 2, i32 %52, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %51, %48
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %60
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** @r_vertexLight, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** @r_uiFullScreen, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73, %68
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @glConfig, i32 0, i32 0), align 8
  %80 = load i64, i64* @GLHW_PERMEDIA2, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78, %73
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** @r_lightmap, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tr, i32 0, i32 0), align 4
  %89 = call i32 @GL_Bind(i32 %88)
  br label %96

90:                                               ; preds = %82, %78, %60
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 0
  %95 = call i32 @R_BindAnimatedImage(%struct.TYPE_15__* %94)
  br label %96

96:                                               ; preds = %90, %87
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @GL_State(i32 %99)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @R_DrawElements(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %96, %44
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** @r_lightmap, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %138

113:                                              ; preds = %108
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129, %121, %113
  br label %142

138:                                              ; preds = %129, %108
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %5

142:                                              ; preds = %137, %17, %5
  ret void
}

declare dso_local i32 @ComputeColors(%struct.TYPE_17__*) #1

declare dso_local i32 @ComputeTexCoords(%struct.TYPE_17__*) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglColorPointer(i32, i32, i32, i32) #1

declare dso_local i32 @DrawMultitextured(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @R_BindAnimatedImage(%struct.TYPE_15__*) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
