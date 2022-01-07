; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_gl1.c_menu_display_gl1_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_gl1.c_menu_display_gl1_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__*, i32, i64, i64 }
%struct.TYPE_12__ = type { float*, i32, i8*, i32, i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@vertices3 = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @menu_display_gl1_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_gl1_draw(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %6, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %12 = icmp ne %struct.TYPE_17__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  br label %151

17:                                               ; preds = %13
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load float*, float** %21, align 8
  %23 = icmp ne float* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = call float* (...) @menu_display_gl1_get_default_vertices()
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store float* %25, float** %29, align 8
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = call i8* (...) @menu_display_gl1_get_default_tex_coords()
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  store i8* %38, i8** %42, align 8
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = call i8* (...) @menu_display_gl1_get_default_tex_coords()
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  store i8* %51, i8** %55, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = call i32 @menu_display_gl1_viewport(%struct.TYPE_16__* %57, %struct.TYPE_15__* %58)
  %60 = load i32, i32* @GL_TEXTURE_2D, align 4
  %61 = call i32 @glEnable(i32 %60)
  %62 = load i32, i32* @GL_TEXTURE_2D, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @glBindTexture(i32 %62, i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  br label %83

79:                                               ; preds = %56
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = call i64 @menu_display_gl1_get_default_mvp(%struct.TYPE_15__* %80)
  %82 = inttoptr i64 %81 to i32*
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi i32* [ %78, %74 ], [ %82, %79 ]
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32* %84, i32** %85, align 8
  %86 = load i32, i32* @GL_PROJECTION, align 4
  %87 = call i32 @glMatrixMode(i32 %86)
  %88 = call i32 (...) @glPushMatrix()
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @glLoadMatrixf(i32* %90)
  %92 = load i32, i32* @GL_MODELVIEW, align 4
  %93 = call i32 @glMatrixMode(i32 %92)
  %94 = call i32 (...) @glPushMatrix()
  %95 = call i32 (...) @glLoadIdentity()
  %96 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %97 = call i32 @glEnableClientState(i32 %96)
  %98 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %99 = call i32 @glEnableClientState(i32 %98)
  %100 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %101 = call i32 @glEnableClientState(i32 %100)
  %102 = load i32, i32* @GL_FLOAT, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load float*, float** %106, align 8
  %108 = call i32 @glVertexPointer(i32 2, i32 %102, i32 0, float* %107)
  %109 = load i32, i32* @GL_FLOAT, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @glColorPointer(i32 4, i32 %109, i32 0, i32 %114)
  %116 = load i32, i32* @GL_FLOAT, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @glTexCoordPointer(i32 2, i32 %116, i32 0, i8* %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @menu_display_prim_to_gl1_enum(i32 %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @glDrawArrays(i32 %126, i32 0, i32 %131)
  %133 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %134 = call i32 @glDisableClientState(i32 %133)
  %135 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %136 = call i32 @glDisableClientState(i32 %135)
  %137 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %138 = call i32 @glDisableClientState(i32 %137)
  %139 = load i32, i32* @GL_MODELVIEW, align 4
  %140 = call i32 @glMatrixMode(i32 %139)
  %141 = call i32 (...) @glPopMatrix()
  %142 = load i32, i32* @GL_PROJECTION, align 4
  %143 = call i32 @glMatrixMode(i32 %142)
  %144 = call i32 (...) @glPopMatrix()
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 4
  br label %151

151:                                              ; preds = %83, %16
  ret void
}

declare dso_local float* @menu_display_gl1_get_default_vertices(...) #1

declare dso_local i8* @menu_display_gl1_get_default_tex_coords(...) #1

declare dso_local i32 @menu_display_gl1_viewport(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i64 @menu_display_gl1_get_default_mvp(%struct.TYPE_15__*) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glLoadMatrixf(i32*) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, float*) #1

declare dso_local i32 @glColorPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, i8*) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @menu_display_prim_to_gl1_enum(i32) #1

declare dso_local i32 @glDisableClientState(i32) #1

declare dso_local i32 @glPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
