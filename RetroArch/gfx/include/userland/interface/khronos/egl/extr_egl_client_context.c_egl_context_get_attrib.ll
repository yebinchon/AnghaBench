; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_context.c_egl_context_get_attrib.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_context.c_egl_context_get_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@EGL_TRUE = common dso_local global i32 0, align 4
@EGL_OPENGL_ES_API = common dso_local global i32 0, align 4
@EGL_OPENVG_API = common dso_local global i32 0, align 4
@EGL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egl_context_get_attrib(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %49 [
    i32 134, label %9
    i32 133, label %17
    i32 132, label %31
    i32 131, label %43
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = trunc i64 %13 to i32
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @EGL_TRUE, align 4
  store i32 %16, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %27 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %24
  ]

21:                                               ; preds = %17, %17
  %22 = load i32, i32* @EGL_OPENGL_ES_API, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @EGL_OPENVG_API, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %29

27:                                               ; preds = %17
  %28 = call i32 (...) @UNREACHABLE()
  br label %29

29:                                               ; preds = %27, %24, %21
  %30 = load i32, i32* @EGL_TRUE, align 4
  store i32 %30, i32* %4, align 4
  br label %51

31:                                               ; preds = %3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %39 [
    i32 130, label %35
    i32 128, label %35
    i32 129, label %37
  ]

35:                                               ; preds = %31, %31
  %36 = load i32*, i32** %7, align 8
  store i32 1, i32* %36, align 4
  br label %41

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  store i32 2, i32* %38, align 4
  br label %41

39:                                               ; preds = %31
  %40 = call i32 (...) @UNREACHABLE()
  br label %41

41:                                               ; preds = %39, %37, %35
  %42 = load i32, i32* @EGL_TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @EGL_TRUE, align 4
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @EGL_FALSE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %43, %41, %29, %9
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
