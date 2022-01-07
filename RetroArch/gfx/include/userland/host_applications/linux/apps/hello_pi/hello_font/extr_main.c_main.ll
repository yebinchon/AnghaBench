; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_font/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_font/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GRAPHICS_RESOURCE_RGBA32 = common dso_local global i32 0, align 4
@GRAPHICS_RESOURCE_WIDTH = common dso_local global i32 0, align 4
@GRAPHICS_RESOURCE_HEIGHT = common dso_local global i32 0, align 4
@VC_DISPMAN_ROT0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"The quick brown fox jumps over the lazy dog\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  %10 = call i32 (...) @bcm_host_init()
  %11 = call i32 @gx_graphics_init(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call i32 @graphics_get_display_size(i32 0, i32* %3, i32* %4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @GRAPHICS_RESOURCE_RGBA32, align 4
  %24 = call i32 @gx_create_window(i32 0, i32 %21, i32 %22, i32 %23, i32* %2)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @GRAPHICS_RGBA32(i32 0, i32 0, i32 0, i32 0)
  %33 = call i32 @graphics_resource_fill(i32 %29, i32 0, i32 0, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @GRAPHICS_RESOURCE_WIDTH, align 4
  %37 = load i32, i32* @GRAPHICS_RESOURCE_HEIGHT, align 4
  %38 = load i32, i32* @VC_DISPMAN_ROT0, align 4
  %39 = call i32 @graphics_display_resource(i32 %34, i32 0, i32 %35, i32 0, i32 0, i32 %36, i32 %37, i32 %38, i32 1)
  store i32 10, i32* %7, align 4
  br label %40

40:                                               ; preds = %0, %73
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 60
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @GRAPHICS_RGBA32(i32 0, i32 0, i32 0, i32 0)
  %50 = call i32 @graphics_resource_fill(i32 %46, i32 0, i32 0, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @GRAPHICS_RGBA32(i32 0, i32 0, i32 255, i32 255)
  %54 = call i32 @graphics_resource_fill(i32 %51, i32 0, i32 40, i32 %52, i32 1, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 40
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @GRAPHICS_RGBA32(i32 0, i32 255, i32 0, i32 255)
  %60 = call i32 @graphics_resource_fill(i32 %55, i32 0, i32 %57, i32 %58, i32 1, i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @render_subtitle(i32 %61, i8* %62, i32 0, i32 %63, i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @graphics_update_displayed_resource(i32 %66, i32 0, i32 0, i32 0, i32 0)
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp sgt i32 %70, 50
  br i1 %71, label %72, label %73

72:                                               ; preds = %40
  store i32 10, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %40
  br label %40
}

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i32 @gx_graphics_init(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @graphics_get_display_size(i32, i32*, i32*) #1

declare dso_local i32 @gx_create_window(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @graphics_resource_fill(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GRAPHICS_RGBA32(i32, i32, i32, i32) #1

declare dso_local i32 @graphics_display_resource(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @render_subtitle(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @graphics_update_displayed_resource(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
