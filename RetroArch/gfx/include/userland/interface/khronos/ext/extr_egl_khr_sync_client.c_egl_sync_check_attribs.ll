; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_egl_khr_sync_client.c_egl_sync_check_attribs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_egl_khr_sync_client.c_egl_sync_check_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EGL_SYNC_PRIOR_COMMANDS_COMPLETE_KHR = common dso_local global i32 0, align 4
@EGL_UNSIGNALED_KHR = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32*)* @egl_sync_check_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egl_sync_check_attribs(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* @EGL_SYNC_PRIOR_COMMANDS_COMPLETE_KHR, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @EGL_UNSIGNALED_KHR, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 %18, i32* %19, align 4
  br label %25

20:                                               ; preds = %5
  %21 = load i32, i32* @EGL_NONE, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %7, align 8
  %32 = load i32, i32* %30, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @EGL_NONE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %43

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %41 [
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @EGL_FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ true, %44 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
