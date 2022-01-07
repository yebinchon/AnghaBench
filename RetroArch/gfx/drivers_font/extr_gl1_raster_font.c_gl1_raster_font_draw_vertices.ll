; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl1_raster_font.c_gl1_raster_font_draw_vertices.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl1_raster_font.c_gl1_raster_font_draw_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, float*, i32, i32 }

@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@vertices3 = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*)* @gl1_raster_font_draw_vertices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl1_raster_font_draw_vertices(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = call i32 @gl1_raster_font_upload_atlas(%struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %13, %3
  %21 = load i32, i32* @GL_PROJECTION, align 4
  %22 = call i32 @glMatrixMode(i32 %21)
  %23 = call i32 (...) @glPushMatrix()
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @glLoadMatrixf(i32 %29)
  %31 = load i32, i32* @GL_MODELVIEW, align 4
  %32 = call i32 @glMatrixMode(i32 %31)
  %33 = call i32 (...) @glPushMatrix()
  %34 = call i32 (...) @glLoadIdentity()
  %35 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %36 = call i32 @glEnableClientState(i32 %35)
  %37 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %38 = call i32 @glEnableClientState(i32 %37)
  %39 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %40 = call i32 @glEnableClientState(i32 %39)
  %41 = load i32, i32* @GL_FLOAT, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load float*, float** %43, align 8
  %45 = call i32 @glVertexPointer(i32 2, i32 %41, i32 0, float* %44)
  %46 = load i32, i32* @GL_FLOAT, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @glColorPointer(i32 4, i32 %46, i32 0, i32 %49)
  %51 = load i32, i32* @GL_FLOAT, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @glTexCoordPointer(i32 2, i32 %51, i32 0, i32 %54)
  %56 = load i32, i32* @GL_TRIANGLES, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @glDrawArrays(i32 %56, i32 0, i32 %59)
  %61 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %62 = call i32 @glDisableClientState(i32 %61)
  %63 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %64 = call i32 @glDisableClientState(i32 %63)
  %65 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %66 = call i32 @glDisableClientState(i32 %65)
  %67 = load i32, i32* @GL_MODELVIEW, align 4
  %68 = call i32 @glMatrixMode(i32 %67)
  %69 = call i32 (...) @glPopMatrix()
  %70 = load i32, i32* @GL_PROJECTION, align 4
  %71 = call i32 @glMatrixMode(i32 %70)
  %72 = call i32 (...) @glPopMatrix()
  ret void
}

declare dso_local i32 @gl1_raster_font_upload_atlas(%struct.TYPE_13__*) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glLoadMatrixf(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, float*) #1

declare dso_local i32 @glColorPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @glDisableClientState(i32) #1

declare dso_local i32 @glPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
