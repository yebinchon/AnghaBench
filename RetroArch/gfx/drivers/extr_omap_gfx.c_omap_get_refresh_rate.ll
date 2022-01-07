; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omap_get_refresh_rate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omap_get_refresh_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { float, float, float, float, float, float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i8*)* @omap_get_refresh_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @omap_get_refresh_rate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.fb_var_screeninfo* %12, %struct.fb_var_screeninfo** %4, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %15 = load float, float* %14, align 4
  %16 = fdiv float 1.000000e+06, %15
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 2
  %22 = load float, float* %21, align 4
  %23 = fadd float %19, %22
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 3
  %26 = load float, float* %25, align 4
  %27 = fadd float %23, %26
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 4
  %30 = load float, float* %29, align 4
  %31 = fadd float %27, %30
  %32 = fdiv float %16, %31
  %33 = fmul float %32, 1.000000e+06
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 5
  %36 = load float, float* %35, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 6
  %39 = load float, float* %38, align 4
  %40 = fadd float %36, %39
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 7
  %43 = load float, float* %42, align 4
  %44 = fadd float %40, %43
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 8
  %47 = load float, float* %46, align 4
  %48 = fadd float %44, %47
  %49 = fdiv float %33, %48
  ret float %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
