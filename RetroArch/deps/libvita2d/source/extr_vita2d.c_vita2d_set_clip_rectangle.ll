; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_set_clip_rectangle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_set_clip_rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clip_rect_x_min = common dso_local global i32 0, align 4
@clip_rect_y_min = common dso_local global i32 0, align 4
@clip_rect_x_max = common dso_local global i32 0, align 4
@clip_rect_y_max = common dso_local global i32 0, align 4
@drawing = common dso_local global i64 0, align 8
@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_STENCIL_FUNC_NEVER = common dso_local global i32 0, align 4
@SCE_GXM_STENCIL_OP_ZERO = common dso_local global i32 0, align 4
@DISPLAY_WIDTH = common dso_local global i32 0, align 4
@DISPLAY_HEIGHT = common dso_local global i32 0, align 4
@SCE_GXM_STENCIL_OP_REPLACE = common dso_local global i32 0, align 4
@clipping_enabled = common dso_local global i64 0, align 8
@SCE_GXM_STENCIL_FUNC_EQUAL = common dso_local global i32 0, align 4
@SCE_GXM_STENCIL_OP_KEEP = common dso_local global i32 0, align 4
@SCE_GXM_STENCIL_FUNC_ALWAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vita2d_set_clip_rectangle(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* @clip_rect_x_min, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* @clip_rect_y_min, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* @clip_rect_x_max, align 4
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* @clip_rect_y_max, align 4
  %13 = load i64, i64* @drawing, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %4
  %16 = load i32, i32* @_vita2d_context, align 4
  %17 = load i32, i32* @SCE_GXM_STENCIL_FUNC_NEVER, align 4
  %18 = load i32, i32* @SCE_GXM_STENCIL_OP_ZERO, align 4
  %19 = load i32, i32* @SCE_GXM_STENCIL_OP_ZERO, align 4
  %20 = load i32, i32* @SCE_GXM_STENCIL_OP_ZERO, align 4
  %21 = call i32 @sceGxmSetFrontStencilFunc(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 255, i32 255)
  %22 = load i32, i32* @DISPLAY_WIDTH, align 4
  %23 = load i32, i32* @DISPLAY_HEIGHT, align 4
  %24 = call i32 @vita2d_draw_rectangle(i32 0, i32 0, i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* @_vita2d_context, align 4
  %26 = load i32, i32* @SCE_GXM_STENCIL_FUNC_NEVER, align 4
  %27 = load i32, i32* @SCE_GXM_STENCIL_OP_REPLACE, align 4
  %28 = load i32, i32* @SCE_GXM_STENCIL_OP_REPLACE, align 4
  %29 = load i32, i32* @SCE_GXM_STENCIL_OP_REPLACE, align 4
  %30 = call i32 @sceGxmSetFrontStencilFunc(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 255, i32 255)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @vita2d_draw_rectangle(i32 %31, i32 %32, i32 %35, i32 %38, i32 0)
  %40 = load i64, i64* @clipping_enabled, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %15
  %43 = load i32, i32* @_vita2d_context, align 4
  %44 = load i32, i32* @SCE_GXM_STENCIL_FUNC_EQUAL, align 4
  %45 = load i32, i32* @SCE_GXM_STENCIL_OP_KEEP, align 4
  %46 = load i32, i32* @SCE_GXM_STENCIL_OP_KEEP, align 4
  %47 = load i32, i32* @SCE_GXM_STENCIL_OP_KEEP, align 4
  %48 = call i32 @sceGxmSetFrontStencilFunc(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 255, i32 255)
  br label %56

49:                                               ; preds = %15
  %50 = load i32, i32* @_vita2d_context, align 4
  %51 = load i32, i32* @SCE_GXM_STENCIL_FUNC_ALWAYS, align 4
  %52 = load i32, i32* @SCE_GXM_STENCIL_OP_KEEP, align 4
  %53 = load i32, i32* @SCE_GXM_STENCIL_OP_KEEP, align 4
  %54 = load i32, i32* @SCE_GXM_STENCIL_OP_KEEP, align 4
  %55 = call i32 @sceGxmSetFrontStencilFunc(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 255, i32 255)
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %4
  ret void
}

declare dso_local i32 @sceGxmSetFrontStencilFunc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vita2d_draw_rectangle(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
