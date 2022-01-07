; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_core_raster_font.c_gl_core_raster_font_upload_atlas.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_core_raster_font.c_gl_core_raster_font_upload_atlas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@GL_R8 = common dso_local global i32 0, align 4
@GL_RED = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @gl_core_raster_font_upload_atlas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_core_raster_font_upload_atlas(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = call i32 @glDeleteTextures(i32 1, i64* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call i32 @glGenTextures(i32 1, i64* %13)
  %15 = load i32, i32* @GL_TEXTURE_2D, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @glBindTexture(i32 %15, i64 %18)
  %20 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %21 = call i32 @glPixelStorei(i32 %20, i32 1)
  %22 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %23 = call i32 @glPixelStorei(i32 %22, i32 0)
  %24 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %25 = call i32 @glBindBuffer(i32 %24, i32 0)
  %26 = load i32, i32* @GL_TEXTURE_2D, align 4
  %27 = load i32, i32* @GL_R8, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @glTexStorage2D(i32 %26, i32 1, i32 %27, i32 %32, i32 %37)
  %39 = load i32, i32* @GL_TEXTURE_2D, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GL_RED, align 4
  %51 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @glTexSubImage2D(i32 %39, i32 0, i32 0, i32 0, i32 %44, i32 %49, i32 %50, i32 %51, i32 %56)
  %58 = load i32, i32* @GL_TEXTURE_2D, align 4
  %59 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %60 = load i32, i32* @GL_LINEAR, align 4
  %61 = call i32 @glTexParameteri(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @GL_TEXTURE_2D, align 4
  %63 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %64 = load i32, i32* @GL_LINEAR, align 4
  %65 = call i32 @glTexParameteri(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @GL_TEXTURE_2D, align 4
  %67 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %68 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %69 = call i32 @glTexParameteri(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @GL_TEXTURE_2D, align 4
  %71 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %72 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %73 = call i32 @glTexParameteri(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @GL_TEXTURE_2D, align 4
  %75 = call i32 @glBindTexture(i32 %74, i64 0)
  ret i32 1
}

declare dso_local i32 @glDeleteTextures(i32, i64*) #1

declare dso_local i32 @glGenTextures(i32, i64*) #1

declare dso_local i32 @glBindTexture(i32, i64) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glTexStorage2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
