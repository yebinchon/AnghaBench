; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_set_vbo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_set_vbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_STATIC_DRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64*, i32*, i64)* @gl_glsl_set_vbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_glsl_set_vbo(i32** %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i32**, i32*** %5, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = mul i64 %17, 4
  %19 = call i64 @realloc(i32* %16, i64 %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @retro_assert(i32* %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load i32**, i32*** %5, align 8
  store i32* %23, i32** %24, align 8
  br label %25

25:                                               ; preds = %14, %4
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = mul i64 %29, 4
  %31 = call i32 @memcpy(i32* %27, i32* %28, i64 %30)
  %32 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %33, 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @GL_STATIC_DRAW, align 4
  %37 = call i32 @glBufferData(i32 %32, i64 %34, i32* %35, i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  ret void
}

declare dso_local i64 @realloc(i32*, i64) #1

declare dso_local i32 @retro_assert(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @glBufferData(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
