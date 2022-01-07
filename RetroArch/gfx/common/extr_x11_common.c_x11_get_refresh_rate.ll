; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_get_refresh_rate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_get_refresh_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, float, float }

@g_x11_dpy = common dso_local global i32 0, align 4
@g_x11_win = common dso_local global i64 0, align 8
@None = common dso_local global i64 0, align 8
@V_DBLSCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @x11_get_refresh_rate(i8* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @g_x11_dpy, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* @g_x11_win, align 8
  %14 = load i64, i64* @None, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  store float 0.000000e+00, float* %2, align 4
  br label %50

17:                                               ; preds = %12
  %18 = load i32, i32* @g_x11_dpy, align 4
  %19 = load i64, i64* @g_x11_win, align 8
  %20 = call i32 @XGetWindowAttributes(i32 %18, i64 %19, %struct.TYPE_5__* %4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store float 0.000000e+00, float* %2, align 4
  br label %50

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @XScreenNumberOfScreen(i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @g_x11_dpy, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @XF86VidModeGetModeLine(i32 %28, i32 %29, i32* %8, %struct.TYPE_6__* %5)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @V_DBLSCAN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %23
  %40 = load i32, i32* %8, align 4
  %41 = sitofp i32 %40 to float
  %42 = fmul float %41, 1.000000e+03
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fdiv float %42, %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %47 = load float, float* %46, align 4
  %48 = fdiv float %45, %47
  store float %48, float* %9, align 4
  %49 = load float, float* %9, align 4
  store float %49, float* %2, align 4
  br label %50

50:                                               ; preds = %39, %22, %16
  %51 = load float, float* %2, align 4
  ret float %51
}

declare dso_local i32 @XGetWindowAttributes(i32, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @XScreenNumberOfScreen(i32*) #1

declare dso_local i32 @XF86VidModeGetModeLine(i32, i32, i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
