; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_convert_image_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_convert_image_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VG_sRGB_565 = common dso_local global i32 0, align 4
@VG_sRGBX_8888 = common dso_local global i32 0, align 4
@VG_sARGB_8888 = common dso_local global i32 0, align 4
@VCOS_EINVAL = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @convert_image_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_image_type(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %19 [
    i32 130, label %10
    i32 129, label %13
    i32 128, label %16
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @VG_sRGB_565, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  store i32 2, i32* %8, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load i32, i32* @VG_sRGBX_8888, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  store i32 3, i32* %8, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @VG_sARGB_8888, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  store i32 4, i32* %8, align 4
  br label %23

19:                                               ; preds = %3
  %20 = call i32 @vcos_assert(i32 0)
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @VCOS_EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %16, %13, %10
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @VCOS_SUCCESS, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
