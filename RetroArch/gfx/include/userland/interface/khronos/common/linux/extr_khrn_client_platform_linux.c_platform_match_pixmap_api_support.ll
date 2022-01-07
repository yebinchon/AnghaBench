; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_platform_linux.c_platform_match_pixmap_api_support.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_platform_linux.c_platform_match_pixmap_api_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EGL_OPENGL_BIT = common dso_local global i32 0, align 4
@EGL_PIXEL_FORMAT_RENDER_GL_BRCM = common dso_local global i32 0, align 4
@EGL_OPENGL_ES_BIT = common dso_local global i32 0, align 4
@EGL_PIXEL_FORMAT_RENDER_GLES_BRCM = common dso_local global i32 0, align 4
@EGL_OPENGL_ES2_BIT = common dso_local global i32 0, align 4
@EGL_PIXEL_FORMAT_RENDER_GLES2_BRCM = common dso_local global i32 0, align 4
@EGL_OPENVG_BIT = common dso_local global i32 0, align 4
@EGL_PIXEL_FORMAT_RENDER_VG_BRCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_match_pixmap_api_support(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @EGL_OPENGL_BIT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EGL_PIXEL_FORMAT_RENDER_GL_BRCM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EGL_OPENGL_ES_BIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i64, i64* %3, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EGL_PIXEL_FORMAT_RENDER_GLES_BRCM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EGL_OPENGL_ES2_BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i64, i64* %3, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EGL_PIXEL_FORMAT_RENDER_GLES2_BRCM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %35, %30
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @EGL_OPENVG_BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i64, i64* %3, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EGL_PIXEL_FORMAT_RENDER_VG_BRCM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %48, %43
  %57 = phi i1 [ true, %43 ], [ %55, %48 ]
  br label %58

58:                                               ; preds = %56, %35, %22, %9
  %59 = phi i1 [ false, %35 ], [ false, %22 ], [ false, %9 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
