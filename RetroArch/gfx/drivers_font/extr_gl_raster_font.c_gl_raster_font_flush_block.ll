; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_raster_font.c_gl_raster_font_flush_block.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_raster_font.c_gl_raster_font_flush_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32*)* @gl_raster_font_flush_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_raster_font_flush_block(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi %struct.TYPE_11__* [ %18, %15 ], [ null, %19 ]
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %24, %20
  br label %77

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gl_raster_font_setup_viewport(i32 %36, i32 %37, %struct.TYPE_12__* %38, i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_8__* %46 to i32*
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @gl_raster_font_draw_vertices(%struct.TYPE_12__* %43, i32* %47, i32* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %35
  %55 = load i32, i32* @GL_TEXTURE_2D, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @glBindTexture(i32 %55, i32 %67)
  %69 = load i32, i32* @GL_BLEND, align 4
  %70 = call i32 @glDisable(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @video_driver_set_viewport(i32 %71, i32 %72, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %34, %54, %35
  ret void
}

declare dso_local i32 @gl_raster_font_setup_viewport(i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @gl_raster_font_draw_vertices(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @video_driver_set_viewport(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
