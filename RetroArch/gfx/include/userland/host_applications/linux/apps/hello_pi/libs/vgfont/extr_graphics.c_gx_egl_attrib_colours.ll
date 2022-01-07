; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_egl_attrib_colours.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_egl_attrib_colours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gx_egl_attrib_colours.rgba = internal global [4 x i32] [i32 131, i32 132, i32 133, i32 134], align 16
@gx_egl_attrib_colours.rgb565 = internal global [4 x i32] [i32 5, i32 6, i32 5, i32 0], align 16
@gx_egl_attrib_colours.rgb888 = internal global [4 x i32] [i32 8, i32 8, i32 8, i32 0], align 16
@gx_egl_attrib_colours.rgb32a = internal global [4 x i32] [i32 8, i32 8, i32 8, i32 8], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @gx_egl_attrib_colours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx_egl_attrib_colours(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %13 [
    i32 130, label %10
    i32 129, label %11
    i32 128, label %12
  ]

10:                                               ; preds = %2
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gx_egl_attrib_colours.rgb565, i64 0, i64 0), i32** %8, align 8
  br label %15

11:                                               ; preds = %2
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gx_egl_attrib_colours.rgb888, i64 0, i64 0), i32** %8, align 8
  br label %15

12:                                               ; preds = %2
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gx_egl_attrib_colours.rgb32a, i64 0, i64 0), i32** %8, align 8
  br label %15

13:                                               ; preds = %2
  %14 = call i32 @vcos_assert(i32 0)
  store i32 -1, i32* %3, align 4
  br label %45

15:                                               ; preds = %12, %11, %10
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @countof(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gx_egl_attrib_colours.rgba, i64 0, i64 0))
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* @gx_egl_attrib_colours.rgba, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @countof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
