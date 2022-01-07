; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_ribbon_set_vertex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_ribbon_set_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XMB_RIBBON_COLS = common dso_local global i32 0, align 4
@XMB_RIBBON_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, i32)* @xmb_ribbon_set_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_ribbon_set_vertex(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = uitofp i32 %9 to float
  %11 = load i32, i32* @XMB_RIBBON_COLS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %10, %13
  %15 = fmul float %14, 2.000000e+00
  %16 = fsub float %15, 1.000000e+00
  %17 = load float*, float** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds float, float* %17, i64 %20
  store float %16, float* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = uitofp i32 %22 to float
  %24 = load i32, i32* @XMB_RIBBON_ROWS, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %23, %26
  %28 = fmul float %27, 2.000000e+00
  %29 = fsub float %28, 1.000000e+00
  %30 = load float*, float** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds float, float* %30, i64 %33
  store float %29, float* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
