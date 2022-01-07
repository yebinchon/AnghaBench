; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-opengl.c_SetOpenGLPalette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-opengl.c_SetOpenGLPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HiBuffer = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@textures = common dso_local global i32* null, align 8
@GL_RGB = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetOpenGLPalette(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @HiBuffer, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @GL_TEXTURE_2D, align 4
  %7 = load i32*, i32** @textures, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @p_glBindTexture(i32 %6, i32 %9)
  %11 = load i32, i32* @GL_TEXTURE_2D, align 4
  %12 = load i32, i32* @GL_RGB, align 4
  %13 = load i32, i32* @GL_RGBA, align 4
  %14 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @p_glColorTableEXT(i32 %11, i32 %12, i32 256, i32 %13, i32 %14, i32* %15)
  br label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @SetPaletteBlitToHigh(i32* %18)
  br label %20

20:                                               ; preds = %17, %5
  ret void
}

declare dso_local i32 @p_glBindTexture(i32, i32) #1

declare dso_local i32 @p_glColorTableEXT(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SetPaletteBlitToHigh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
