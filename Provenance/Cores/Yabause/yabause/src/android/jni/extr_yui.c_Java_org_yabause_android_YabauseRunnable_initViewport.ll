; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_Java_org_yabause_android_YabauseRunnable_initViewport.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_Java_org_yabause_android_YabauseRunnable_initViewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_Display = common dso_local global i32 0, align 4
@EGL_READ = common dso_local global i32 0, align 4
@g_Surface = common dso_local global i32 0, align 4
@g_Context = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_TEXTURE = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_VENDOR = common dso_local global i32 0, align 4
@GL_RENDERER = common dso_local global i32 0, align 4
@GL_VERSION = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@EGL_EXTENSIONS = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Java_org_yabause_android_YabauseRunnable_initViewport() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i32 (...) @eglGetCurrentDisplay()
  store i32 %3, i32* @g_Display, align 4
  %4 = load i32, i32* @EGL_READ, align 4
  %5 = call i32 @eglGetCurrentSurface(i32 %4)
  store i32 %5, i32* @g_Surface, align 4
  %6 = call i32 (...) @eglGetCurrentContext()
  store i32 %6, i32* @g_Context, align 4
  %7 = load i32, i32* @GL_PROJECTION, align 4
  %8 = call i32 @glMatrixMode(i32 %7)
  %9 = call i32 (...) @glLoadIdentity()
  %10 = call i32 @glOrthof(i32 0, i32 320, i32 224, i32 0, i32 1, i32 0)
  %11 = load i32, i32* @GL_MODELVIEW, align 4
  %12 = call i32 @glMatrixMode(i32 %11)
  %13 = call i32 (...) @glLoadIdentity()
  %14 = load i32, i32* @GL_TEXTURE, align 4
  %15 = call i32 @glMatrixMode(i32 %14)
  %16 = call i32 (...) @glLoadIdentity()
  %17 = load i32, i32* @GL_BLEND, align 4
  %18 = call i32 @glDisable(i32 %17)
  %19 = load i32, i32* @GL_SRC_ALPHA, align 4
  %20 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %21 = call i32 @glBlendFunc(i32 %19, i32 %20)
  %22 = load i32, i32* @GL_VENDOR, align 4
  %23 = call i32 @glGetString(i32 %22)
  %24 = call i32 @yprintf(i32 %23)
  %25 = load i32, i32* @GL_RENDERER, align 4
  %26 = call i32 @glGetString(i32 %25)
  %27 = call i32 @yprintf(i32 %26)
  %28 = load i32, i32* @GL_VERSION, align 4
  %29 = call i32 @glGetString(i32 %28)
  %30 = call i32 @yprintf(i32 %29)
  %31 = load i32, i32* @GL_EXTENSIONS, align 4
  %32 = call i32 @glGetString(i32 %31)
  %33 = call i32 @yprintf(i32 %32)
  %34 = load i32, i32* @g_Display, align 4
  %35 = load i32, i32* @EGL_EXTENSIONS, align 4
  %36 = call i32 @eglQueryString(i32 %34, i32 %35)
  %37 = call i32 @yprintf(i32 %36)
  %38 = load i32, i32* @g_Display, align 4
  %39 = call i32 @eglSwapInterval(i32 %38, i32 0)
  %40 = load i32, i32* @g_Display, align 4
  %41 = load i32, i32* @EGL_NO_SURFACE, align 4
  %42 = load i32, i32* @EGL_NO_SURFACE, align 4
  %43 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %44 = call i32 @eglMakeCurrent(i32 %40, i32 %41, i32 %42, i32 %43)
  ret i32 0
}

declare dso_local i32 @eglGetCurrentDisplay(...) #1

declare dso_local i32 @eglGetCurrentSurface(i32) #1

declare dso_local i32 @eglGetCurrentContext(...) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glOrthof(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @yprintf(i32) #1

declare dso_local i32 @glGetString(i32) #1

declare dso_local i32 @eglQueryString(i32, i32) #1

declare dso_local i32 @eglSwapInterval(i32, i32) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
