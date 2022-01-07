; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_priv_resource_fill.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_priv_resource_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VG_SCISSORING = common dso_local global i32 0, align 4
@VG_FALSE = common dso_local global i32 0, align 4
@VG_CLEAR_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vg error %x filling area\00", align 1
@VCOS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_priv_resource_fill(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %17 = call i32 @gx_priv_colour_to_paint(i32 %15, i32* %16)
  %18 = load i32, i32* @VG_SCISSORING, align 4
  %19 = load i32, i32* @VG_FALSE, align 4
  %20 = call i32 @vgSeti(i32 %18, i32 %19)
  %21 = load i32, i32* @VG_CLEAR_COLOR, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %23 = call i32 @vgSetfv(i32 %21, i32 4, i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @vgClear(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = call i32 (...) @vgGetError()
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @GX_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @vcos_assert(i32 0)
  br label %36

36:                                               ; preds = %32, %6
  %37 = load i32, i32* @VCOS_SUCCESS, align 4
  ret i32 %37
}

declare dso_local i32 @gx_priv_colour_to_paint(i32, i32*) #1

declare dso_local i32 @vgSeti(i32, i32) #1

declare dso_local i32 @vgSetfv(i32, i32, i32*) #1

declare dso_local i32 @vgClear(i32, i32, i32, i32) #1

declare dso_local i32 @vgGetError(...) #1

declare dso_local i32 @GX_LOG(i8*, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
