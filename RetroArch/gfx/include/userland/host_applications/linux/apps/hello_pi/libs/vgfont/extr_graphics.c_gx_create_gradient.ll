; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_create_gradient.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_create_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VG_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Could not create paint: vg %d\0A\00", align 1
@VG_PAINT_TYPE = common dso_local global i32 0, align 4
@VG_PAINT_TYPE_LINEAR_GRADIENT = common dso_local global i32 0, align 4
@VG_PAINT_COLOR_RAMP_STOPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gx_create_gradient(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x double], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @VG_INVALID_HANDLE, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @gx_priv_save(i32* %8, i32 %11)
  %13 = call i64 (...) @vgCreatePaint()
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = call i32 @gx_priv_restore(i32* %8)
  %18 = call i32 (...) @vgGetError()
  %19 = call i32 @vcos_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @vcos_assert(i32 0)
  br label %40

21:                                               ; preds = %3
  %22 = getelementptr inbounds [10 x double], [10 x double]* %7, i64 0, i64 0
  store double 0.000000e+00, double* %22, align 16
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds [10 x double], [10 x double]* %7, i64 0, i64 0
  %25 = getelementptr inbounds double, double* %24, i64 1
  %26 = call i32 @gx_priv_colour_to_paint(i32 %23, double* %25)
  %27 = getelementptr inbounds [10 x double], [10 x double]* %7, i64 0, i64 5
  store double 1.000000e+00, double* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds [10 x double], [10 x double]* %7, i64 0, i64 0
  %30 = getelementptr inbounds double, double* %29, i64 6
  %31 = call i32 @gx_priv_colour_to_paint(i32 %28, double* %30)
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* @VG_PAINT_TYPE, align 4
  %34 = load i32, i32* @VG_PAINT_TYPE_LINEAR_GRADIENT, align 4
  %35 = call i32 @vgSetParameteri(i64 %32, i32 %33, i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @VG_PAINT_COLOR_RAMP_STOPS, align 4
  %38 = getelementptr inbounds [10 x double], [10 x double]* %7, i64 0, i64 0
  %39 = call i32 @vgSetParameterfv(i64 %36, i32 %37, i32 10, double* %38)
  br label %40

40:                                               ; preds = %21, %16
  %41 = call i32 @gx_priv_restore(i32* %8)
  %42 = load i64, i64* %9, align 8
  %43 = inttoptr i64 %42 to i32*
  ret i32* %43
}

declare dso_local i32 @gx_priv_save(i32*, i32) #1

declare dso_local i64 @vgCreatePaint(...) #1

declare dso_local i32 @gx_priv_restore(i32*) #1

declare dso_local i32 @vcos_log(i8*, i32) #1

declare dso_local i32 @vgGetError(...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @gx_priv_colour_to_paint(i32, double*) #1

declare dso_local i32 @vgSetParameteri(i64, i32, i32) #1

declare dso_local i32 @vgSetParameterfv(i64, i32, i32, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
